//
//  ItemsCollectionViewCell.swift
//  Bookstore
//
//  Created by Sukhpreet Saini on 2025-04-03.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    var buttonPressed: (() -> ()) = {}
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        itemView.addShadowAndCornerRadius()
        addButton.addShadowAndCornerRadius()
    }

    func getItem(item: BookModel) {
        itemImage.image = item.image
        itemTitle.text = item.title
        itemPrice.text = String(item.price)
    }
    @IBAction func addPressed(_ sender: UIButton) {
        buttonPressed()
        addButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
    }
}
