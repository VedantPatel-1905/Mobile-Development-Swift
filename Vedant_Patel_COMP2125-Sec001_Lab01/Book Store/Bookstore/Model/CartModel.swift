//
//  CartModel.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import Foundation

class CartModel {
    let item: BookModel
    var quantity: Int
    
    init(item: BookModel, quantity: Int) {
        self.item = item
        self.quantity = quantity
    }
}
