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
   var accounts = [Account]()
    // Default position of index
    var myIndex = 0

    override func viewDidLoad()
    {super.viewDidLoad()}

    override func didReceiveMemoryWarning()
    {}

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath)as! AccountTableViewCell
        let index = indexPath.row
       var account = accounts[index]
        if let textCell = cell as AccountTableViewCell!{
           
            do {  let account = self.accounts[indexPath.row]

            textCell.setName.text = account.Name
            textCell.setBankName.text = account.BankName
            textCell.setAccountNumber.text = account.AccountNumber
///////////textCell.setAccountBalance = Account.AccountBalance!///////////////////////
            }
            print("cell from AccountTableViewVontroller \(cell)")
        return cell
            
        }}
    
    
    // buttons for cancel and save in ["create-tableviewcontroller"]
        @IBAction func cancelAccountCreation(_ segue: UIStoryboardSegue) {
            print("cancel")
    }
        @IBAction func saveAccount(_ segue: UIStoryboardSegue) {
            print("save acc called")
    }
  
    override func viewDidAppear(_ animated: Bool) {
        print("account from AccountTableViewVontroller \(accounts)")
    }
}
