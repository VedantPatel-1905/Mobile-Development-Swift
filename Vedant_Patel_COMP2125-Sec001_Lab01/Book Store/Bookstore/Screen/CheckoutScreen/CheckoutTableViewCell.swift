//
//  CheckoutTableViewCell.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

class CheckoutTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var optionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(name: String, option: String) {
        nameLabel.text = name
        optionLabel.text = option
    }
    
}
