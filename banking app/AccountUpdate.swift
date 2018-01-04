//
//  AccountUpdate.swift
//  banking app
//
//  Created by Indu Yadav on 04/01/18.
//  Copyright © 2018 Indu Yadav. All rights reserved.
//

import Foundation

class Model {
        var objOfCreateAccount : CreateAccountViewController
    init() {
       print("this is intializer")
       }
    func writeValus(name:String, bankname:String, accountnumber:String)  {
        var name = objOfCreateAccount.getName.text
        var bankanme = objOfCreateAccount.getBankName.text
        var accountnumberobjOfCreate = objOfCreateAccount.getAccountNumber.text
        }
    
    
}


