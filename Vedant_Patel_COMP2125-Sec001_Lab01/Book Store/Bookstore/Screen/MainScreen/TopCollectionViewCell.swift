//
//  TopCollectionViewCell.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

// This UICollectionViewCell is used in the top collection view to display book promotions.
class TopCollectionViewCell: UICollectionViewCell {

    // View containing all UI elements
    @IBOutlet weak var topView: UIView!
    
    // Label to display book promotion text
    @IBOutlet weak var topLabel: UILabel!
    
    // Image view for book or promotional graphics
    @IBOutlet weak var topImage: UIImageView!
    
    // Called when the cell is loaded from the nib file
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Adds shadow and corner radius effect to the image for better UI design
        topImage.addShadowAndCornerRadius()
    }
}
