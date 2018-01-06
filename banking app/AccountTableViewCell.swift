//
//  AccountTableViewCell.swift
//  banking app
//
//  Created by Indu Yadav on 04/01/18.
//  Copyright © 2018 Indu Yadav. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell{
  
     var accounts : [Account] = []
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var setAccountBalance: UILabel!
    @IBOutlet weak var setAccountNumber: UILabel!
    @IBOutlet weak var setBankName: UILabel!
    @IBOutlet weak var setName: UILabel!
    
    
    
    
}
