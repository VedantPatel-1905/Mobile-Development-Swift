//
//  CategoryFunctions.swift
//  Bookstore
//
//  Created by Sukhpreet Saini on 2025-04-03.
//

import Foundation
import UIKit

struct CategoryFunctions {
    static var categories = [CategoriesModel]()
    
    static func createCategory(item: CategoriesModel) {
        categories.append(item)
    }
    
    static func readCategories(complation: @escaping () -> Void) {
        DispatchQueue.main.async {
            if categories.isEmpty {
                categories.append(CategoriesModel(categoryName: "Fantasy", categoryImage: UIImage(named: "c1")!, items: BookFunctions.fantasyBooks))
                categories.append(CategoriesModel(categoryName: "Fiction", categoryImage: UIImage(named: "c2")!, items: BookFunctions.fictionBooks))
                categories.append(CategoriesModel(categoryName: "History", categoryImage:UIImage(named:"c3")!, items: BookFunctions.historyBooks))
                categories.append(CategoriesModel(categoryName: "Horror", categoryImage: UIImage(named: "c4")!, items: BookFunctions.horrorBooks))
                categories.append(CategoriesModel(categoryName: "Humor", categoryImage: UIImage(named: "c5")!, items: BookFunctions.humorBooks))
                categories.append(CategoriesModel(categoryName: "Mystry", categoryImage: UIImage(named: "c6")!, items: BookFunctions.mystryBooks))
                categories.append(CategoriesModel(categoryName: "Mythology", categoryImage: UIImage(named: "c7")!, items: BookFunctions.mythologyBooks))
            }
            complation()
        }
    }
}
