//
//  CreateAccountViewController.swift
//  banking app
//
//  Created by Indu Yadav on 04/01/18.
//  Copyright © 2018 Indu Yadav. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    var accounts : [Account] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    //buttons for the view : NAME, BANKNAME, ACCOUNT NUMBER.
    @IBOutlet weak var getName: UITextField!
    
    @IBOutlet weak var getBankName: UITextField!
    
    @IBOutlet weak var getAccountNumber: UITextField!
    
    // IF PRESSED SAVE BUTTON IT SHOULD SEND DETAILS TO THE MODEL.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard segue.identifier == "SaveAccountSegue" else
        {
            return
        }
        accounts = [Account(Name: getName.text!, AccountNumber: getAccountNumber.text!, BankName: getBankName.text!)]
    }



}
