//
//  HeadlLineCell.swift
//  News Feed
//
//  Created by Darryl Robinson  on 8/17/18.
//  Copyright © 2018 Darryl Robinson . All rights reserved.
//

import UIKit

class HeadlLineCell: UITableViewCell {

    static  var reuseIdentifier = "HeadlinerCell"
    
    @IBOutlet weak var Headliner: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected s
        
    }
    

}
