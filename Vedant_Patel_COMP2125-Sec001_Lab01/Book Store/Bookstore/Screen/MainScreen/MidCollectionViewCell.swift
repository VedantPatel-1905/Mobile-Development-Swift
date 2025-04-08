//
//  MidCollectionViewCell.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

// This UICollectionViewCell is used in the middle collection view to display book categories.
class MidCollectionViewCell: UICollectionViewCell {

    // Label to display the category name
    @IBOutlet weak var midLabel: UILabel!
    
    // Image view to represent the book category visually
    @IBOutlet weak var midImageView: UIImageView!
    
    // Called when the cell is loaded from the nib file
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Adds rounded corners to the category image for a better UI appearance
        midImageView.layer.cornerRadius = 20
        
        // Sets the background color of the image view to red as a placeholder
        midImageView.backgroundColor = .red
    }
}
