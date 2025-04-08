//
//  ItemFunctions.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import Foundation
import UIKit

struct BookFunctions {
    static var fantasyBooks = [BookModel]()
    static var fictionBooks = [BookModel]()
    static var horrorBooks = [BookModel]()
    static var historyBooks = [BookModel]()
    static var humorBooks = [BookModel]()
    static var mystryBooks = [BookModel]()
    static var mythologyBooks = [BookModel]()

    
    static func createItem(item: BookModel) {
        fantasyBooks.append(item)
    }
    
    static func readItems(complation: @escaping () -> Void) {
        DispatchQueue.main.async {
            if fantasyBooks.isEmpty {
                fantasyBooks.append(BookModel(title: "Tempest", image: UIImage(named: "f1")!, price: 20.5))
                fantasyBooks.append(BookModel(title: "Fallen", image: UIImage(named: "f2")!, price: 23.65))
                fantasyBooks.append(BookModel(title: "Legend", image: UIImage(named: "f3")!, price: 24.94))
                fantasyBooks.append(BookModel(title: "Orange", image: UIImage(named: "f4")!, price: 23.49))
                fantasyBooks.append(BookModel(title: "The Prince", image: UIImage(named: "f5")!, price: 35.90))
                fantasyBooks.append(BookModel(title: "Soil", image: UIImage(named: "f6")!, price: 20))
                fantasyBooks.append(BookModel(title: "Moons", image: UIImage(named: "f7")!, price: 70))
                fantasyBooks.append(BookModel(title: "Ravens", image: UIImage(named: "f8")!, price: 80))
            }
            if fictionBooks.isEmpty {
                fictionBooks.append(BookModel(title: "Love", image: UIImage(named: "fi1")!, price: 10))
                fictionBooks.append(BookModel(title: "Authentic", image: UIImage(named: "fi2")!, price: 70.65))
                fictionBooks.append(BookModel(title: "Relic", image: UIImage(named: "fi3")!, price: 90.5))
                fictionBooks.append(BookModel(title: "Thief Forest", image: UIImage(named: "fi4")!, price: 120.3))
            }
            if horrorBooks.isEmpty {
                horrorBooks.append(BookModel(title: "IT Awaits", image: UIImage(named: "ho1")!, price: 90.2))
                horrorBooks.append(BookModel(title: "Dark Forest", image: UIImage(named: "ho2")!, price: 100.2))
                horrorBooks.append(BookModel(title: "Moonlight", image: UIImage(named: "ho3")!, price: 70.6))
                horrorBooks.append(BookModel(title: "Ritual", image: UIImage(named: "ho4")!, price: 120.0))
                horrorBooks.append(BookModel(title: "Splendor", image: UIImage(named: "ho5")!, price: 130.0))
                horrorBooks.append(BookModel(title: "Green Brain", image: UIImage(named: "ho6")!, price: 67.0))

            }
            if historyBooks.isEmpty {
                historyBooks.append(BookModel(title: "History Book", image: UIImage(named: "h1")!, price: 160))
                historyBooks.append(BookModel(title: "This & That", image: UIImage(named: "h2")!, price: 140))
                historyBooks.append(BookModel(title: "Ancient World", image: UIImage(named: "h3")!, price: 130))
                historyBooks.append(BookModel(title: "Last Pharoh", image: UIImage(named: "h4")!, price: 120))
                historyBooks.append(BookModel(title: "Indian History", image: UIImage(named: "h5")!, price: 120))
                historyBooks.append(BookModel(title: "Uncharted", image: UIImage(named: "h6")!, price: 105))
            }
            
            if humorBooks.isEmpty {
                    humorBooks.append(BookModel(title: "Funny Story", image: UIImage(named: "hu1")!, price: 128))
                    humorBooks.append(BookModel(title: "Muppets", image: UIImage(named: "hu2")!, price: 184))
                    humorBooks.append(BookModel(title: "Humor", image: UIImage(named: "hu3")!, price: 148))
                    humorBooks.append(BookModel(title: "Dad Jokes", image: UIImage(named: "hu4")!, price: 158))
                    humorBooks.append(BookModel(title: "Moms Way", image: UIImage(named: "hu5")!, price: 182))
            }
            if mystryBooks.isEmpty {
                mystryBooks.append(BookModel(title: "Dark Side", image: UIImage(named: "m1")!, price: 182))
                mystryBooks.append(BookModel(title: "The Read", image: UIImage(named: "m2")!, price: 138))
                mystryBooks.append(BookModel(title: "If You", image: UIImage(named: "m3")!, price: 182))
                mystryBooks.append(BookModel(title: "Book Title", image: UIImage(named: "m4")!, price: 158))
                mystryBooks.append(BookModel(title: "Ill Fame", image: UIImage(named: "m5")!, price: 185))
                mystryBooks.append(BookModel(title: "Roman", image: UIImage(named: "m6")!, price: 185))
                mystryBooks.append(BookModel(title: "Dangerous Things", image: UIImage(named: "m7")!, price: 183))
            }
            if mythologyBooks.isEmpty {
                mythologyBooks.append(BookModel(title: "Greek", image: UIImage(named: "my1")!, price: 16))
                mythologyBooks.append(BookModel(title: "Greek Myths", image: UIImage(named: "my2")!, price: 138))
                mythologyBooks.append(BookModel(title: "Mythology", image: UIImage(named: "my3")!, price: 183))
                mythologyBooks.append(BookModel(title: "Curse Beauty", image: UIImage(named: "my4")!, price: 168))
                mythologyBooks.append(BookModel(title: "Medusa", image: UIImage(named: "my5")!, price: 183))
            }
            complation()
        }
    }
}
