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
            print("gaurd stopped in CreateAccountViewController")
            return
        }
         let account = Account(a: getName.text!, b: getAccountNumber.text!, c: getBankName.text!)
         accounts.append(account)
       
        accounts.forEach
            {
                acc in print("in foreach \(acc)")
            }
        
        for x in accounts{
          print(x)
        }
         
        
    }



}
