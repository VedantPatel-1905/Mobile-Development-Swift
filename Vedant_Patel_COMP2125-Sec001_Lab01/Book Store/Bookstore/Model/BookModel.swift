//
//  Item.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import Foundation
import UIKit

struct BookModel: Equatable {
    let id: UUID
    let title: String
    let image: UIImage
    let price: Double
    
    init(title: String, image: UIImage, price: Double) {
        id = UUID()
        self.title = title
        self.image = image
        self.price = price
    }
}
