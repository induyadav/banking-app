
//  Account.swift
//  banking app
//
//  Created by Indu Yadav on 04/01/18.
//  Copyright © 2018 Indu Yadav. All rights reserved.
//

import Foundation
//account model

struct Account
{

    var Name : String
    var AccountNumber : String
    var BankName : String
    
    //custom init
    init(a:String,b:String,c:String) {
        
        
        
        self.Name=a
        self.AccountNumber=b
        self.BankName=c
        print("struct hai bc \(self.AccountNumber)  \(self.BankName)  \(self.Name)" )
    }

}


