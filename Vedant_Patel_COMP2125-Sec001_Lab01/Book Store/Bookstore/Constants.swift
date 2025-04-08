//
//  Constants.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import Foundation

// MARK: - K Struct
// Description: This struct contains constant strings used for identifying
// various collection view cells, table view cells, and segues within the app.
// These constants are used throughout the app to maintain consistency and avoid
// hardcoding string values repeatedly.

struct K {
    
    // MARK: - Collection View Cell Identifiers
    // These constants represent the reuse identifiers for different types of
    // collection view cells. These values are used to register and dequeue cells
    // efficiently across the app.
    
    static let TopCollectionViewCell = "TopCollectionViewCell"  // Cell identifier for the top cell in the collection view
    static let topCell = "topCell"  // Another identifier for the top cell (possibly used in a different context)
    static let MiddleCollectionViewCell = "MidCollectionViewCell"  // Identifier for the middle cell
    static let middleCell = "midCell"  // Alternate identifier for the middle cell
    static let BottomCollectionViewCell = "BottomCollectionViewCell"  // Identifier for the bottom cell
    static let bottomCell = "botCell"  // Alternate identifier for the bottom cell
    static let CategoryCollectionViewCell = "CategoryCollectionViewCell"  // Identifier for the category cell
    static let categoryCell = "categoryCell"  // Alternate identifier for the category cell
    static let ItemsCollectionViewCell = "ItemsCollectionViewCell"  // Identifier for the items collection view cell
    static let itemCell = "itemCell"  // Alternate identifier for the items collection view cell
    static let CartTableViewCell = "CartTableViewCell"  // Identifier for the cart table view cell
    static let cartCell = "cartCell"  // Alternate identifier for the cart table view cell
    static let CheckoutTableViewCell = "CheckoutTableViewCell"  // Identifier for the checkout table view cell
    static let checkoutCell = "checkoutCell"  // Alternate identifier for the checkout table view cell
    
    // MARK: - Segue Identifiers
    // These constants represent the identifiers used for performing segues
    // between different screens in the app. They help ensure that the correct
    // transitions occur when navigating between view controllers.
    
    struct segues {
        static let detailScreenSeque = "detailScreenSeque"  // Segue from the main screen to the detail screen
        static let categoryScreenSeque = "categoryScreenSeque"  // Segue to the category screen
        static let categoryToDetail = "CategoryToDetail"  // Segue from the category screen to the detail screen
        static let mainToCartSegue = "mainToCartSegue"  // Segue from the main screen to the cart
        static let categoryToCart = "categoryToCart"  // Segue from the category screen to the cart
        static let mainToProfileSegue = "mainToProfileSegue"  // Segue from the main screen to the profile
        static let cartToCheckoutSegue = "cartToCheckoutSegue"  // Segue from the cart screen to the checkout screen
        static let resultSegue = "resultSegue"  // Segue to the result screen
    }
}

