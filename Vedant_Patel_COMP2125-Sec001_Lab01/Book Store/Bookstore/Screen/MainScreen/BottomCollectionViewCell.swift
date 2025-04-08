//
//  BottomCollectionViewCell.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

class BottomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var discountedPrice: UILabel!
    @IBOutlet weak var normalPrice: UILabel!
    @IBOutlet weak var botImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        botImageView.layer.cornerRadius = 10
        botImageView.backgroundColor = .red
    }
    
    func setupBot(item: BookModel){
        botImageView.image = item.image
        discountedPrice.text = "$ " + String(format: "%.2f" , item.price)
        normalPrice.text = "New"
    }

}
