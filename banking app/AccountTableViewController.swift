//
//  AccountTableViewController.swift
//  banking app
//
//  Created by Indu Yadav on 04/01/18.
//  Copyright © 2018 Indu Yadav. All rights reserved.
//

import UIKit

class AccountTableViewController: UITableViewController{
   
    // OBJECT OF STRUCT Account
    var accounts : [Account] = []
    // Default position of index
    var myIndex = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning()
    {
       
        
    }

    

  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
   
    //fuctions for [table view controller]
    override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
  
    
    //function for [table- datasource]
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: IndexPath)as! AccountTableViewCell
        let index = indexPath.row
        let account = accounts[index]
        cell.
        
    }
    // buttons for cancel and save in ["create-tableviewcontroller"]
    @IBAction func cancelAccountCreation(_ segue: UIStoryboardSegue) {}
    @IBAction func saveAccount(_ segue: UIStoryboardSegue) {}
  
}
