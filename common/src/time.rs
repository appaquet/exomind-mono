use crate::node::Node;
pub use chrono::prelude::*;
use std::ops::{Add, Sub};
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;
use std::time::Duration;
pub use wasm_timer::Instant;

// TODO: But will be rewritten in consistent clock logic in ticket https://github.com/appaquet/exocore/issues/6
const CONSISTENT_COUNTER_MAX: usize = 999;

#[derive(Clone)]
pub struct Clock {
    source: Source,
    consistent_counter: Arc<AtomicUsize>,
}

impl Clock {
    pub fn new() -> Clock {
        Clock {
            source: Source::System,
            consistent_counter: Arc::new(AtomicUsize::new(0)),
        }
    }

    #[cfg(any(test, feature = "tests_utils"))]
    pub fn new_mocked() -> Clock {
        Clock {
            source: Source::Mocked(std::sync::Arc::new(std::sync::RwLock::new(None))),
            consistent_counter: Arc::new(AtomicUsize::new(0)),
        }
    }

    #[cfg(any(test, feature = "tests_utils"))]
    pub fn new_fixed_mocked(instant: Instant) -> Clock {
        Clock {
            source: Source::Mocked(std::sync::Arc::new(std::sync::RwLock::new(Some(instant)))),
            consistent_counter: Arc::new(AtomicUsize::new(0)),
        }
    }

    #[inline]
    pub fn instant(&self) -> Instant {
        match &self.source {
            Source::System => Instant::now(),
            #[cfg(any(test, feature = "tests_utils"))]
            Source::Mocked(time) => {
                let mocked_instant = time.read().expect("Couldn't acquire read lock");
                if let Some(instant) = *mocked_instant {
                    instant
                } else {
                    Instant::now()
                }
            }
        }
    }

    pub fn consistent_time(&self, node: &Node) -> ConsistentTimestamp {
        // TODO: To be rewritten with https://github.com/appaquet/exocore/issues/6

        let counter = loop {
            let counter = self.consistent_counter.fetch_add(1, Ordering::SeqCst);
            if counter < CONSISTENT_COUNTER_MAX {
                break counter;
            }

            // counter is higher than MAX, we try to swap it with 0.
            // if the previous value after swap wasn't equal to what we expected, it
            // means another thread swapped / increased the value, and we need to retry
            let before_swap =
                self.consistent_counter
                    .compare_and_swap(counter + 1, 0, Ordering::SeqCst);
            if before_swap == counter {
                break 0;
            }
        };

        let unix_elapsed = wasm_timer::SystemTime::now()
            .duration_since(wasm_timer::UNIX_EPOCH)
            .unwrap();
        match &self.source {
            Source::System => ConsistentTimestamp::from_context(
                unix_elapsed,
                counter as u64,
                node.consistent_clock_id(),
            ),
            #[cfg(any(test, feature = "tests_utils"))]
            Source::Mocked(time) => {
                let mocked_instant = time.read().expect("Couldn't acquire read lock");
                let unix_elapsed_offset = if let Some(instant) = *mocked_instant {
                    let now = Instant::now();
                    if now > instant {
                        unix_elapsed - (now - instant)
                    } else {
                        unix_elapsed + (instant - now)
                    }
                } else {
                    unix_elapsed
                };

                ConsistentTimestamp::from_context(
                    unix_elapsed_offset,
                    counter as u64,
                    node.consistent_clock_id(),
                )
            }
        }
    }

    #[cfg(any(test, feature = "tests_utils"))]
    pub fn set_fixed_instant(&self, current_time: Instant) {
        if let Source::Mocked(mocked_instant) = &self.source {
            let mut mocked_instant = mocked_instant.write().expect("Couldn't acquire write lock");
            *mocked_instant = Some(current_time);
        } else {
            panic!("Called set_time, but clock source is system");
        }
    }

    #[cfg(any(test, feature = "tests_utils"))]
    pub fn add_fixed_instant_duration(&self, duration: Duration) {
        if let Source::Mocked(mocked_instant) = &self.source {
            let mut mocked_instant = mocked_instant.write().expect("Couldn't acquire write lock");
            if let Some(current_instant) = *mocked_instant {
                *mocked_instant = Some(current_instant + duration)
            }
        } else {
            panic!("Called set_time, but clock source is system");
        }
    }

    #[cfg(any(test, feature = "tests_utils"))]
    pub fn reset_fixed_instant(&self) {
        if let Source::Mocked(mocked_instant) = &self.source {
            let mut mocked_instant = mocked_instant.write().expect("Couldn't acquire write lock");
            *mocked_instant = None;
        } else {
            panic!("Called set_time, but clock source is system");
        }
    }
}

impl Default for Clock {
    fn default() -> Self {
        Clock::new()
    }
}

#[derive(Clone)]
enum Source {
    System,
    #[cfg(any(test, feature = "tests_utils"))]
    Mocked(std::sync::Arc<std::sync::RwLock<Option<Instant>>>),
}

///
/// Timestamp that tries to be consistent and monotonic across cluster by incorporating node's unique id
/// and a per-node counter.
///
/// It's designed to have the same resolution as a nanoseconds precision timestamp by encoding node id and counter in
/// nanoseconds.
///
#[derive(Debug, Clone, Copy, Ord, PartialOrd, Eq, PartialEq, Hash)]
pub struct ConsistentTimestamp(pub u64);

impl ConsistentTimestamp {
    pub fn from_context(
        duration: Duration,
        counter: u64,
        node_clock_id: u16,
    ) -> ConsistentTimestamp {
        // we shift by 1000 for milliseconds, 1000 for node id, 1000 for the counter
        let timestamp = duration.as_secs() * 1_000 * 1_000 * 1_000
            + u64::from(duration.subsec_millis()) * 1_000 * 1_000
            + u64::from(node_clock_id % 1_000) * 1_000
            + counter;

        ConsistentTimestamp(timestamp)
    }

    pub fn from_duration(dur: Duration) -> ConsistentTimestamp {
        ConsistentTimestamp(dur.as_nanos() as u64)
    }

    pub fn to_datetime(self) -> DateTime<Utc> {
        Utc.timestamp_nanos(self.0 as i64)
    }

    pub fn to_duration(self) -> Duration {
        Duration::from_nanos(self.0)
    }
}

impl Sub<ConsistentTimestamp> for ConsistentTimestamp {
    type Output = Option<ConsistentTimestamp>;

    fn sub(self, rhs: ConsistentTimestamp) -> Self::Output {
        self.0.checked_sub(rhs.0).map(ConsistentTimestamp)
    }
}

impl Add<ConsistentTimestamp> for ConsistentTimestamp {
    type Output = ConsistentTimestamp;

    fn add(self, rhs: ConsistentTimestamp) -> Self::Output {
        ConsistentTimestamp(self.0 + rhs.0)
    }
}

impl From<u64> for ConsistentTimestamp {
    fn from(value: u64) -> Self {
        ConsistentTimestamp(value)
    }
}

impl Into<u64> for ConsistentTimestamp {
    fn into(self) -> u64 {
        self.0
    }
}

#[cfg(test)]
mod tests {
    use std::sync::Arc;
    use std::thread;
    use std::time::Duration;

    use super::*;
    use crate::node::LocalNode;

    #[test]
    fn non_mocked_clock() {
        let now = Instant::now();

        let clock = Clock::new();
        let instant1 = clock.instant();
        assert!(instant1 > now);

        let instant2 = clock.instant();
        assert!(instant2 > instant1);
    }

    #[test]
    fn fixed_mocked_clock() {
        let mocked_clock = Clock::new_fixed_mocked(Instant::now());
        assert_eq!(mocked_clock.instant(), mocked_clock.instant());

        let new_instant = Instant::now() - Duration::from_secs(1);
        mocked_clock.set_fixed_instant(new_instant);

        assert_eq!(mocked_clock.instant(), new_instant);

        let dur_2secs = Duration::from_secs(2);
        mocked_clock.add_fixed_instant_duration(dur_2secs);
        assert_eq!(mocked_clock.instant(), new_instant + dur_2secs);
    }

    #[test]
    fn fixed_consistent_time() {
        let mocked_clock = Clock::new_fixed_mocked(Instant::now());
        let local_node = LocalNode::generate();

        let time1 = mocked_clock.consistent_time(local_node.node());
        std::thread::sleep(Duration::from_millis(10));
        let time2 = mocked_clock.consistent_time(local_node.node());
        assert_eq!(time1 + ConsistentTimestamp::from(1), time2); // time2 is +1 because of counter

        mocked_clock.reset_fixed_instant();
        let time3 = mocked_clock.consistent_time(local_node.node());
        std::thread::sleep(Duration::from_millis(10));
        let time4 = mocked_clock.consistent_time(local_node.node());

        let elaps = ConsistentTimestamp::from_duration(Duration::from_millis(10));
        assert!((time4 - time3).unwrap() > elaps);
    }

    #[test]
    fn consistent_time_collision() {
        let mocked_clock = Clock::new_fixed_mocked(Instant::now());
        let local_node = LocalNode::generate();

        let mut last_time = ConsistentTimestamp::from(0);
        for _i in 0..100 {
            let current_time = mocked_clock.consistent_time(local_node.node());
            assert_ne!(last_time, current_time);
            last_time = current_time;
        }
    }

    #[test]
    fn fixed_future_consistent_time() {
        let mocked_clock = Clock::new_fixed_mocked(Instant::now() + Duration::from_secs(10));
        let local_node = LocalNode::generate();

        let time1 = mocked_clock.consistent_time(local_node.node());
        std::thread::sleep(Duration::from_millis(10));
        let time2 = mocked_clock.consistent_time(local_node.node());
        assert_eq!(time1 + ConsistentTimestamp::from(1), time2); // time2 is +1 because of counter

        mocked_clock.reset_fixed_instant();
        let time3 = mocked_clock.consistent_time(local_node.node());
        std::thread::sleep(Duration::from_millis(10));
        let time4 = mocked_clock.consistent_time(local_node.node());

        let elaps = ConsistentTimestamp::from_duration(Duration::from_millis(10));
        assert!((time4 - time3).unwrap() > elaps);
    }

    #[test]
    fn consistent_time_to_duration() {
        let dur = Duration::from_millis(3_323_123);
        let consistent = ConsistentTimestamp::from_duration(dur);
        let dur_after = consistent.to_duration();
        assert_eq!(dur, dur_after);
    }

    #[test]
    fn consistent_time_to_chrono() {
        let now: DateTime<Utc> = Utc::now();
        let consistent = ConsistentTimestamp::from(now.timestamp_nanos() as u64);
        let consistent_now = consistent.to_datetime();
        assert_eq!(now.timestamp_millis(), consistent_now.timestamp_millis());
    }

    #[test]
    fn unfixed_mocked_clock() {
        let mocked_clock = Clock::new_mocked();
        assert_ne!(mocked_clock.instant(), mocked_clock.instant());

        let inst = Instant::now();
        mocked_clock.set_fixed_instant(inst);

        assert_eq!(mocked_clock.instant(), inst);

        mocked_clock.reset_fixed_instant();
        assert_ne!(mocked_clock.instant(), mocked_clock.instant());
    }

    #[test]
    fn thread_safety() {
        let now = Instant::now();

        let mocked_clock = Arc::new(Clock::new_mocked());

        let thread_clock = Arc::clone(&mocked_clock);
        thread::spawn(move || {
            thread_clock.set_fixed_instant(now);
        })
        .join()
        .unwrap();

        assert_eq!(mocked_clock.instant(), now);
    }
}
