//
//  SettingsViewController.swift
//  Exomind
//
//  Created by Andre-Philippe Paquet on 2016-02-01.
//  Copyright © 2016 Exomind. All rights reserved.
//

import UIKit
import Alamofire
import KeychainSwift

class SettingsViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch ((indexPath as NSIndexPath).section, (indexPath as NSIndexPath).item) {
        case (0, 0): // exomind bar
            self.exomindBar()

        case (1, 0): // feedback
            self.feedback()

        case (2, 0): // logout
            self.logout()

        default:
            print("SettingsViewController > Unhandled setting \(indexPath)")
        }
    }

    func exomindBar() {
        if let mind = SessionStore.mindEntity() {
            (self.tabBarController as? TabBarController)?.show(navigationObject: .entity(entity: mind))
        }
    }

    func logout() {
        Alamofire
        .request("https://exomind.io/logout")
        .response { (resp) in
            print("SettingsViewController > Logged out")
        }

        HttpUtils.wipeCookies()
        DomainStore.instance.resetConnections()
    }

    func feedback() {
    }
}
