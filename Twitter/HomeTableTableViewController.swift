//
//  HomeTableTableViewController.swift
//  Twitter
//
//  Created by Mikael Joseph Kaufman on 3/3/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class HomeTableTableViewController: UITableViewController {

    //Action: Something will happen (This button is an action)
    //outlet: when something will happen, this button will change color or something
    
    // "Logout" Button
    @IBAction func onLogout(_ sender: Any) {
        TwitterAPICaller.client?.logout()
        //send user back to index screen ("Login")
        self.dismiss(animated: true, completion: nil)
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
        print("Logged out my guy")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
}
