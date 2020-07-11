import * as $protobuf from "protobufjs";
/** Namespace exomind. */
export namespace exomind {

    /** Namespace base. */
    namespace base {

        /** Properties of a Collection. */
        interface ICollection {

            /** Collection name */
            name?: (string|null);
        }

        /** Represents a Collection. */
        class Collection implements ICollection {

            /**
             * Constructs a new Collection.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.ICollection);

            /** Collection name. */
            public name: string;

            /**
             * Creates a new Collection instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Collection instance
             */
            public static create(properties?: exomind.base.ICollection): exomind.base.Collection;

            /**
             * Encodes the specified Collection message. Does not implicitly {@link exomind.base.Collection.verify|verify} messages.
             * @param message Collection message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.ICollection, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Collection message, length delimited. Does not implicitly {@link exomind.base.Collection.verify|verify} messages.
             * @param message Collection message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.ICollection, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Collection message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Collection
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Collection;

            /**
             * Decodes a Collection message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Collection
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Collection;

            /**
             * Verifies a Collection message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Collection message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Collection
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Collection;

            /**
             * Creates a plain object from a Collection message. Also converts values to other types if specified.
             * @param message Collection
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Collection, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Collection to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a CollectionChild. */
        interface ICollectionChild {

            /** CollectionChild collection */
            collection?: (exocore.index.IReference|null);

            /** CollectionChild addedDate */
            addedDate?: (google.protobuf.ITimestamp|null);

            /** CollectionChild weight */
            weight?: (number|Long|null);
        }

        /** Represents a CollectionChild. */
        class CollectionChild implements ICollectionChild {

            /**
             * Constructs a new CollectionChild.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.ICollectionChild);

            /** CollectionChild collection. */
            public collection?: (exocore.index.IReference|null);

            /** CollectionChild addedDate. */
            public addedDate?: (google.protobuf.ITimestamp|null);

            /** CollectionChild weight. */
            public weight: (number|Long);

            /**
             * Creates a new CollectionChild instance using the specified properties.
             * @param [properties] Properties to set
             * @returns CollectionChild instance
             */
            public static create(properties?: exomind.base.ICollectionChild): exomind.base.CollectionChild;

            /**
             * Encodes the specified CollectionChild message. Does not implicitly {@link exomind.base.CollectionChild.verify|verify} messages.
             * @param message CollectionChild message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.ICollectionChild, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified CollectionChild message, length delimited. Does not implicitly {@link exomind.base.CollectionChild.verify|verify} messages.
             * @param message CollectionChild message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.ICollectionChild, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a CollectionChild message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns CollectionChild
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.CollectionChild;

            /**
             * Decodes a CollectionChild message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns CollectionChild
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.CollectionChild;

            /**
             * Verifies a CollectionChild message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a CollectionChild message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns CollectionChild
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.CollectionChild;

            /**
             * Creates a plain object from a CollectionChild message. Also converts values to other types if specified.
             * @param message CollectionChild
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.CollectionChild, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this CollectionChild to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a Postponed. */
        interface IPostponed {

            /** Postponed entity */
            entity?: (exocore.index.IReference|null);

            /** Postponed untilDate */
            untilDate?: (google.protobuf.ITimestamp|null);
        }

        /** Represents a Postponed. */
        class Postponed implements IPostponed {

            /**
             * Constructs a new Postponed.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IPostponed);

            /** Postponed entity. */
            public entity?: (exocore.index.IReference|null);

            /** Postponed untilDate. */
            public untilDate?: (google.protobuf.ITimestamp|null);

            /**
             * Creates a new Postponed instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Postponed instance
             */
            public static create(properties?: exomind.base.IPostponed): exomind.base.Postponed;

            /**
             * Encodes the specified Postponed message. Does not implicitly {@link exomind.base.Postponed.verify|verify} messages.
             * @param message Postponed message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IPostponed, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Postponed message, length delimited. Does not implicitly {@link exomind.base.Postponed.verify|verify} messages.
             * @param message Postponed message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IPostponed, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Postponed message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Postponed
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Postponed;

            /**
             * Decodes a Postponed message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Postponed
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Postponed;

            /**
             * Verifies a Postponed message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Postponed message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Postponed
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Postponed;

            /**
             * Creates a plain object from a Postponed message. Also converts values to other types if specified.
             * @param message Postponed
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Postponed, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Postponed to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** AccountType enum. */
        enum AccountType {
            ACCOUNT_TYPE_INVALID = 0,
            ACCOUNT_TYPE_GMAIL = 1
        }

        /** AccountScope enum. */
        enum AccountScope {
            ACCOUNT_SCOPE_INVALID = 0,
            ACCOUNT_SCOPE_EMAIL = 1
        }

        /** Properties of an Account. */
        interface IAccount {

            /** Account key */
            key?: (string|null);

            /** Account name */
            name?: (string|null);

            /** Account type */
            type?: (exomind.base.AccountType|null);

            /** Account scopes */
            scopes?: (exomind.base.AccountScope[]|null);

            /** Account data */
            data?: ({ [k: string]: string }|null);
        }

        /** Represents an Account. */
        class Account implements IAccount {

            /**
             * Constructs a new Account.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IAccount);

            /** Account key. */
            public key: string;

            /** Account name. */
            public name: string;

            /** Account type. */
            public type: exomind.base.AccountType;

            /** Account scopes. */
            public scopes: exomind.base.AccountScope[];

            /** Account data. */
            public data: { [k: string]: string };

            /**
             * Creates a new Account instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Account instance
             */
            public static create(properties?: exomind.base.IAccount): exomind.base.Account;

            /**
             * Encodes the specified Account message. Does not implicitly {@link exomind.base.Account.verify|verify} messages.
             * @param message Account message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IAccount, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Account message, length delimited. Does not implicitly {@link exomind.base.Account.verify|verify} messages.
             * @param message Account message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IAccount, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes an Account message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Account
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Account;

            /**
             * Decodes an Account message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Account
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Account;

            /**
             * Verifies an Account message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates an Account message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Account
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Account;

            /**
             * Creates a plain object from an Account message. Also converts values to other types if specified.
             * @param message Account
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Account, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Account to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of an EmailThread. */
        interface IEmailThread {

            /** EmailThread account */
            account?: (exocore.index.IReference|null);

            /** EmailThread sourceId */
            sourceId?: (string|null);

            /** EmailThread from */
            from?: (exomind.base.IContact|null);

            /** EmailThread subject */
            subject?: (string|null);

            /** EmailThread snippet */
            snippet?: (string|null);

            /** EmailThread lastEmail */
            lastEmail?: (exocore.index.IReference|null);

            /** EmailThread read */
            read?: (boolean|null);
        }

        /** Represents an EmailThread. */
        class EmailThread implements IEmailThread {

            /**
             * Constructs a new EmailThread.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IEmailThread);

            /** EmailThread account. */
            public account?: (exocore.index.IReference|null);

            /** EmailThread sourceId. */
            public sourceId: string;

            /** EmailThread from. */
            public from?: (exomind.base.IContact|null);

            /** EmailThread subject. */
            public subject: string;

            /** EmailThread snippet. */
            public snippet: string;

            /** EmailThread lastEmail. */
            public lastEmail?: (exocore.index.IReference|null);

            /** EmailThread read. */
            public read: boolean;

            /**
             * Creates a new EmailThread instance using the specified properties.
             * @param [properties] Properties to set
             * @returns EmailThread instance
             */
            public static create(properties?: exomind.base.IEmailThread): exomind.base.EmailThread;

            /**
             * Encodes the specified EmailThread message. Does not implicitly {@link exomind.base.EmailThread.verify|verify} messages.
             * @param message EmailThread message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IEmailThread, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified EmailThread message, length delimited. Does not implicitly {@link exomind.base.EmailThread.verify|verify} messages.
             * @param message EmailThread message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IEmailThread, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes an EmailThread message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns EmailThread
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.EmailThread;

            /**
             * Decodes an EmailThread message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns EmailThread
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.EmailThread;

            /**
             * Verifies an EmailThread message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates an EmailThread message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns EmailThread
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.EmailThread;

            /**
             * Creates a plain object from an EmailThread message. Also converts values to other types if specified.
             * @param message EmailThread
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.EmailThread, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this EmailThread to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of an Email. */
        interface IEmail {

            /** Email account */
            account?: (exocore.index.IReference|null);

            /** Email sourceId */
            sourceId?: (string|null);

            /** Email from */
            from?: (exomind.base.IContact|null);

            /** Email receivedDate */
            receivedDate?: (google.protobuf.ITimestamp|null);

            /** Email to */
            to?: (exomind.base.IContact[]|null);

            /** Email cc */
            cc?: (exomind.base.IContact[]|null);

            /** Email bcc */
            bcc?: (exomind.base.IContact[]|null);

            /** Email subject */
            subject?: (string|null);

            /** Email snippet */
            snippet?: (string|null);

            /** Email parts */
            parts?: (exomind.base.IEmailPart[]|null);

            /** Email attachments */
            attachments?: (exomind.base.IEmailAttachment[]|null);
        }

        /** Represents an Email. */
        class Email implements IEmail {

            /**
             * Constructs a new Email.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IEmail);

            /** Email account. */
            public account?: (exocore.index.IReference|null);

            /** Email sourceId. */
            public sourceId: string;

            /** Email from. */
            public from?: (exomind.base.IContact|null);

            /** Email receivedDate. */
            public receivedDate?: (google.protobuf.ITimestamp|null);

            /** Email to. */
            public to: exomind.base.IContact[];

            /** Email cc. */
            public cc: exomind.base.IContact[];

            /** Email bcc. */
            public bcc: exomind.base.IContact[];

            /** Email subject. */
            public subject: string;

            /** Email snippet. */
            public snippet: string;

            /** Email parts. */
            public parts: exomind.base.IEmailPart[];

            /** Email attachments. */
            public attachments: exomind.base.IEmailAttachment[];

            /**
             * Creates a new Email instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Email instance
             */
            public static create(properties?: exomind.base.IEmail): exomind.base.Email;

            /**
             * Encodes the specified Email message. Does not implicitly {@link exomind.base.Email.verify|verify} messages.
             * @param message Email message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IEmail, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Email message, length delimited. Does not implicitly {@link exomind.base.Email.verify|verify} messages.
             * @param message Email message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IEmail, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes an Email message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Email
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Email;

            /**
             * Decodes an Email message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Email
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Email;

            /**
             * Verifies an Email message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates an Email message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Email
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Email;

            /**
             * Creates a plain object from an Email message. Also converts values to other types if specified.
             * @param message Email
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Email, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Email to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a DraftEmail. */
        interface IDraftEmail {

            /** DraftEmail account */
            account?: (exocore.index.IReference|null);

            /** DraftEmail inReplyTo */
            inReplyTo?: (exocore.index.IReference|null);

            /** DraftEmail to */
            to?: (exomind.base.IContact[]|null);

            /** DraftEmail cc */
            cc?: (exomind.base.IContact[]|null);

            /** DraftEmail bcc */
            bcc?: (exomind.base.IContact[]|null);

            /** DraftEmail subject */
            subject?: (string|null);

            /** DraftEmail parts */
            parts?: (exomind.base.IEmailPart[]|null);

            /** DraftEmail attachments */
            attachments?: (exomind.base.IEmailAttachment[]|null);

            /** DraftEmail sendingDate */
            sendingDate?: (google.protobuf.ITimestamp|null);

            /** DraftEmail sentDate */
            sentDate?: (google.protobuf.ITimestamp|null);
        }

        /** Represents a DraftEmail. */
        class DraftEmail implements IDraftEmail {

            /**
             * Constructs a new DraftEmail.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IDraftEmail);

            /** DraftEmail account. */
            public account?: (exocore.index.IReference|null);

            /** DraftEmail inReplyTo. */
            public inReplyTo?: (exocore.index.IReference|null);

            /** DraftEmail to. */
            public to: exomind.base.IContact[];

            /** DraftEmail cc. */
            public cc: exomind.base.IContact[];

            /** DraftEmail bcc. */
            public bcc: exomind.base.IContact[];

            /** DraftEmail subject. */
            public subject: string;

            /** DraftEmail parts. */
            public parts: exomind.base.IEmailPart[];

            /** DraftEmail attachments. */
            public attachments: exomind.base.IEmailAttachment[];

            /** DraftEmail sendingDate. */
            public sendingDate?: (google.protobuf.ITimestamp|null);

            /** DraftEmail sentDate. */
            public sentDate?: (google.protobuf.ITimestamp|null);

            /**
             * Creates a new DraftEmail instance using the specified properties.
             * @param [properties] Properties to set
             * @returns DraftEmail instance
             */
            public static create(properties?: exomind.base.IDraftEmail): exomind.base.DraftEmail;

            /**
             * Encodes the specified DraftEmail message. Does not implicitly {@link exomind.base.DraftEmail.verify|verify} messages.
             * @param message DraftEmail message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IDraftEmail, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified DraftEmail message, length delimited. Does not implicitly {@link exomind.base.DraftEmail.verify|verify} messages.
             * @param message DraftEmail message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IDraftEmail, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a DraftEmail message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns DraftEmail
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.DraftEmail;

            /**
             * Decodes a DraftEmail message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns DraftEmail
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.DraftEmail;

            /**
             * Verifies a DraftEmail message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a DraftEmail message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns DraftEmail
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.DraftEmail;

            /**
             * Creates a plain object from a DraftEmail message. Also converts values to other types if specified.
             * @param message DraftEmail
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.DraftEmail, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this DraftEmail to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of an EmailPart. */
        interface IEmailPart {

            /** EmailPart mimeType */
            mimeType?: (string|null);

            /** EmailPart body */
            body?: (string|null);
        }

        /** Represents an EmailPart. */
        class EmailPart implements IEmailPart {

            /**
             * Constructs a new EmailPart.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IEmailPart);

            /** EmailPart mimeType. */
            public mimeType: string;

            /** EmailPart body. */
            public body: string;

            /**
             * Creates a new EmailPart instance using the specified properties.
             * @param [properties] Properties to set
             * @returns EmailPart instance
             */
            public static create(properties?: exomind.base.IEmailPart): exomind.base.EmailPart;

            /**
             * Encodes the specified EmailPart message. Does not implicitly {@link exomind.base.EmailPart.verify|verify} messages.
             * @param message EmailPart message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IEmailPart, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified EmailPart message, length delimited. Does not implicitly {@link exomind.base.EmailPart.verify|verify} messages.
             * @param message EmailPart message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IEmailPart, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes an EmailPart message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns EmailPart
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.EmailPart;

            /**
             * Decodes an EmailPart message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns EmailPart
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.EmailPart;

            /**
             * Verifies an EmailPart message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates an EmailPart message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns EmailPart
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.EmailPart;

            /**
             * Creates a plain object from an EmailPart message. Also converts values to other types if specified.
             * @param message EmailPart
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.EmailPart, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this EmailPart to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of an EmailAttachment. */
        interface IEmailAttachment {

            /** EmailAttachment key */
            key?: (string|null);

            /** EmailAttachment name */
            name?: (string|null);

            /** EmailAttachment mimeType */
            mimeType?: (string|null);

            /** EmailAttachment size */
            size?: (number|Long|null);

            /** EmailAttachment inlinePlaceholder */
            inlinePlaceholder?: (string|null);

            /** EmailAttachment data */
            data?: ({ [k: string]: string }|null);
        }

        /** Represents an EmailAttachment. */
        class EmailAttachment implements IEmailAttachment {

            /**
             * Constructs a new EmailAttachment.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IEmailAttachment);

            /** EmailAttachment key. */
            public key: string;

            /** EmailAttachment name. */
            public name: string;

            /** EmailAttachment mimeType. */
            public mimeType: string;

            /** EmailAttachment size. */
            public size: (number|Long);

            /** EmailAttachment inlinePlaceholder. */
            public inlinePlaceholder: string;

            /** EmailAttachment data. */
            public data: { [k: string]: string };

            /**
             * Creates a new EmailAttachment instance using the specified properties.
             * @param [properties] Properties to set
             * @returns EmailAttachment instance
             */
            public static create(properties?: exomind.base.IEmailAttachment): exomind.base.EmailAttachment;

            /**
             * Encodes the specified EmailAttachment message. Does not implicitly {@link exomind.base.EmailAttachment.verify|verify} messages.
             * @param message EmailAttachment message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IEmailAttachment, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified EmailAttachment message, length delimited. Does not implicitly {@link exomind.base.EmailAttachment.verify|verify} messages.
             * @param message EmailAttachment message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IEmailAttachment, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes an EmailAttachment message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns EmailAttachment
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.EmailAttachment;

            /**
             * Decodes an EmailAttachment message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns EmailAttachment
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.EmailAttachment;

            /**
             * Verifies an EmailAttachment message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates an EmailAttachment message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns EmailAttachment
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.EmailAttachment;

            /**
             * Creates a plain object from an EmailAttachment message. Also converts values to other types if specified.
             * @param message EmailAttachment
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.EmailAttachment, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this EmailAttachment to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a Note. */
        interface INote {

            /** Note title */
            title?: (string|null);

            /** Note body */
            body?: (string|null);
        }

        /** Represents a Note. */
        class Note implements INote {

            /**
             * Constructs a new Note.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.INote);

            /** Note title. */
            public title: string;

            /** Note body. */
            public body: string;

            /**
             * Creates a new Note instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Note instance
             */
            public static create(properties?: exomind.base.INote): exomind.base.Note;

            /**
             * Encodes the specified Note message. Does not implicitly {@link exomind.base.Note.verify|verify} messages.
             * @param message Note message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.INote, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Note message, length delimited. Does not implicitly {@link exomind.base.Note.verify|verify} messages.
             * @param message Note message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.INote, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Note message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Note
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Note;

            /**
             * Decodes a Note message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Note
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Note;

            /**
             * Verifies a Note message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Note message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Note
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Note;

            /**
             * Creates a plain object from a Note message. Also converts values to other types if specified.
             * @param message Note
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Note, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Note to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a Contact. */
        interface IContact {

            /** Contact name */
            name?: (string|null);

            /** Contact email */
            email?: (string|null);
        }

        /** Represents a Contact. */
        class Contact implements IContact {

            /**
             * Constructs a new Contact.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.IContact);

            /** Contact name. */
            public name: string;

            /** Contact email. */
            public email: string;

            /**
             * Creates a new Contact instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Contact instance
             */
            public static create(properties?: exomind.base.IContact): exomind.base.Contact;

            /**
             * Encodes the specified Contact message. Does not implicitly {@link exomind.base.Contact.verify|verify} messages.
             * @param message Contact message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.IContact, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Contact message, length delimited. Does not implicitly {@link exomind.base.Contact.verify|verify} messages.
             * @param message Contact message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.IContact, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Contact message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Contact
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Contact;

            /**
             * Decodes a Contact message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Contact
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Contact;

            /**
             * Verifies a Contact message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Contact message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Contact
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Contact;

            /**
             * Creates a plain object from a Contact message. Also converts values to other types if specified.
             * @param message Contact
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Contact, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Contact to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a Task. */
        interface ITask {

            /** Task title */
            title?: (string|null);
        }

        /** Represents a Task. */
        class Task implements ITask {

            /**
             * Constructs a new Task.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.ITask);

            /** Task title. */
            public title: string;

            /**
             * Creates a new Task instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Task instance
             */
            public static create(properties?: exomind.base.ITask): exomind.base.Task;

            /**
             * Encodes the specified Task message. Does not implicitly {@link exomind.base.Task.verify|verify} messages.
             * @param message Task message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.ITask, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Task message, length delimited. Does not implicitly {@link exomind.base.Task.verify|verify} messages.
             * @param message Task message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.ITask, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Task message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Task
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Task;

            /**
             * Decodes a Task message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Task
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Task;

            /**
             * Verifies a Task message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Task message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Task
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Task;

            /**
             * Creates a plain object from a Task message. Also converts values to other types if specified.
             * @param message Task
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Task, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Task to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }

        /** Properties of a Link. */
        interface ILink {

            /** Link url */
            url?: (string|null);

            /** Link title */
            title?: (string|null);
        }

        /** Represents a Link. */
        class Link implements ILink {

            /**
             * Constructs a new Link.
             * @param [properties] Properties to set
             */
            constructor(properties?: exomind.base.ILink);

            /** Link url. */
            public url: string;

            /** Link title. */
            public title: string;

            /**
             * Creates a new Link instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Link instance
             */
            public static create(properties?: exomind.base.ILink): exomind.base.Link;

            /**
             * Encodes the specified Link message. Does not implicitly {@link exomind.base.Link.verify|verify} messages.
             * @param message Link message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exomind.base.ILink, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Link message, length delimited. Does not implicitly {@link exomind.base.Link.verify|verify} messages.
             * @param message Link message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exomind.base.ILink, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Link message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Link
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exomind.base.Link;

            /**
             * Decodes a Link message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Link
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exomind.base.Link;

            /**
             * Verifies a Link message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Link message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Link
             */
            public static fromObject(object: { [k: string]: any }): exomind.base.Link;

            /**
             * Creates a plain object from a Link message. Also converts values to other types if specified.
             * @param message Link
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exomind.base.Link, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Link to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }
    }
}

/** Namespace exocore. */
export namespace exocore {

    /** Namespace index. */
    namespace index {

        /** Properties of a Reference. */
        interface IReference {

            /** Reference entityId */
            entityId?: (string|null);

            /** Reference traitId */
            traitId?: (string|null);
        }

        /** Represents a Reference. */
        class Reference implements IReference {

            /**
             * Constructs a new Reference.
             * @param [properties] Properties to set
             */
            constructor(properties?: exocore.index.IReference);

            /** Reference entityId. */
            public entityId: string;

            /** Reference traitId. */
            public traitId: string;

            /**
             * Creates a new Reference instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Reference instance
             */
            public static create(properties?: exocore.index.IReference): exocore.index.Reference;

            /**
             * Encodes the specified Reference message. Does not implicitly {@link exocore.index.Reference.verify|verify} messages.
             * @param message Reference message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: exocore.index.IReference, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Reference message, length delimited. Does not implicitly {@link exocore.index.Reference.verify|verify} messages.
             * @param message Reference message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: exocore.index.IReference, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Reference message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Reference
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): exocore.index.Reference;

            /**
             * Decodes a Reference message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Reference
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): exocore.index.Reference;

            /**
             * Verifies a Reference message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Reference message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Reference
             */
            public static fromObject(object: { [k: string]: any }): exocore.index.Reference;

            /**
             * Creates a plain object from a Reference message. Also converts values to other types if specified.
             * @param message Reference
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: exocore.index.Reference, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Reference to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }
    }
}

/** Namespace google. */
export namespace google {

    /** Namespace protobuf. */
    namespace protobuf {

        /** Properties of a Timestamp. */
        interface ITimestamp {

            /** Timestamp seconds */
            seconds?: (number|Long|null);

            /** Timestamp nanos */
            nanos?: (number|null);
        }

        /** Represents a Timestamp. */
        class Timestamp implements ITimestamp {

            /**
             * Constructs a new Timestamp.
             * @param [properties] Properties to set
             */
            constructor(properties?: google.protobuf.ITimestamp);

            /** Timestamp seconds. */
            public seconds: (number|Long);

            /** Timestamp nanos. */
            public nanos: number;

            /**
             * Creates a new Timestamp instance using the specified properties.
             * @param [properties] Properties to set
             * @returns Timestamp instance
             */
            public static create(properties?: google.protobuf.ITimestamp): google.protobuf.Timestamp;

            /**
             * Encodes the specified Timestamp message. Does not implicitly {@link google.protobuf.Timestamp.verify|verify} messages.
             * @param message Timestamp message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encode(message: google.protobuf.ITimestamp, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Encodes the specified Timestamp message, length delimited. Does not implicitly {@link google.protobuf.Timestamp.verify|verify} messages.
             * @param message Timestamp message or plain object to encode
             * @param [writer] Writer to encode to
             * @returns Writer
             */
            public static encodeDelimited(message: google.protobuf.ITimestamp, writer?: $protobuf.Writer): $protobuf.Writer;

            /**
             * Decodes a Timestamp message from the specified reader or buffer.
             * @param reader Reader or buffer to decode from
             * @param [length] Message length if known beforehand
             * @returns Timestamp
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decode(reader: ($protobuf.Reader|Uint8Array), length?: number): google.protobuf.Timestamp;

            /**
             * Decodes a Timestamp message from the specified reader or buffer, length delimited.
             * @param reader Reader or buffer to decode from
             * @returns Timestamp
             * @throws {Error} If the payload is not a reader or valid buffer
             * @throws {$protobuf.util.ProtocolError} If required fields are missing
             */
            public static decodeDelimited(reader: ($protobuf.Reader|Uint8Array)): google.protobuf.Timestamp;

            /**
             * Verifies a Timestamp message.
             * @param message Plain object to verify
             * @returns `null` if valid, otherwise the reason why it is not
             */
            public static verify(message: { [k: string]: any }): (string|null);

            /**
             * Creates a Timestamp message from a plain object. Also converts values to their respective internal types.
             * @param object Plain object
             * @returns Timestamp
             */
            public static fromObject(object: { [k: string]: any }): google.protobuf.Timestamp;

            /**
             * Creates a plain object from a Timestamp message. Also converts values to other types if specified.
             * @param message Timestamp
             * @param [options] Conversion options
             * @returns Plain object
             */
            public static toObject(message: google.protobuf.Timestamp, options?: $protobuf.IConversionOptions): { [k: string]: any };

            /**
             * Converts this Timestamp to JSON.
             * @returns JSON object
             */
            public toJSON(): { [k: string]: any };
        }
    }
}
