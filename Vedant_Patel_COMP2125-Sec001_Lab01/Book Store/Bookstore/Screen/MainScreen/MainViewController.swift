//
//  MainViewController.swift
//  Bookstore
//
//  Created by Vedant Prakash Patel on 2025-04-01.
//

import UIKit

//  Description: This view controller manages three collection views displaying books and categories. It handles UI interactions and navigation between screens.

class MainViewController: UIViewController {

    // Outlets for different collection views displaying book categories and items
    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var midCollectionView: UICollectionView!
    @IBOutlet weak var botCollectionView: UICollectionView!
    
    // MARK: - Life Cycle
    
    // Called when the view is loaded into memory.
    // Initializes collection views and loads data.
    override func viewDidLoad() {
        print("Content load started")
        
        super.viewDidLoad()
        print("Before content load")
        
        // Register custom collection view cells for use in the UI
        topCollectionView.register(UINib(nibName: K.TopCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: K.topCell)
        midCollectionView.register(UINib(nibName: K.MiddleCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: K.middleCell)
        botCollectionView.register(UINib(nibName: K.BottomCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: K.bottomCell)
        
        print("After content load")

        // Load book data and refresh views upon completion
        BookFunctions.readItems { [weak self] in
            self?.topCollectionView.reloadData()
            self?.botCollectionView.reloadData()
        }
        CategoryFunctions.readCategories { [weak self] in
            self?.midCollectionView.reloadData()
        }
    }
    
    // MARK: - Navigation
    
    // Navigates to the Categories screen when the categories button is pressed.
    @IBAction func categoriesPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: K.segues.categoryScreenSeque, sender: self)
    }

    // Navigates to the Cart screen when the cart button is pressed.
    @IBAction func cartButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: K.segues.mainToCartSegue, sender: self)
    }

    // Navigates to the Profile screen when the profile button is pressed.
    @IBAction func profilePressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: K.segues.mainToProfileSegue, sender: self)
    }

    // Prepares data before transitioning to another screen.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.segues.detailScreenSeque {
            if let DetailVC = segue.destination as? DetailViewController {
                // Pass selected book item to the detail screen
                if let botIndexPath = self.botCollectionView.indexPathsForSelectedItems?.first {
                    DetailVC.item = BookFunctions.fantasyBooks[botIndexPath.row]
                }
                if let topIndexPath = self.topCollectionView.indexPathsForSelectedItems?.first {
                    DetailVC.item = BookFunctions.fantasyBooks[topIndexPath.row]
                }
            }
        } else if segue.identifier == K.segues.categoryScreenSeque {
            if let categoryVC = segue.destination as? CategoryViewController {
                // Pass selected category to the category screen
                if let midIndexPath = self.midCollectionView.indexPathsForSelectedItems?.first {
                    categoryVC.selectedCategory = midIndexPath.item
                }
            }
        }
    }
}

// MARK: - UICollectionViewDelegate

extension MainViewController: UICollectionViewDelegate {
    // Handles item selection in collection views, triggering the correct navigation.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView {
        case topCollectionView:
            performSegue(withIdentifier: K.segues.detailScreenSeque, sender: self)
        case midCollectionView:
            performSegue(withIdentifier: K.segues.categoryScreenSeque, sender: self)
        case botCollectionView:
            performSegue(withIdentifier: K.segues.detailScreenSeque, sender: self)
        default:
            break
        }
    }
}

// MARK: - UICollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    // Returns the number of items in each section of the collection views.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case topCollectionView:
            return BookFunctions.fantasyBooks.count
        case midCollectionView:
            return CategoryFunctions.categories.count
        case botCollectionView:
            return BookFunctions.fantasyBooks.count
        default:
            return 0
        }
    }
    
    // Configures collection view cells based on their respective data sources.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case topCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.topCell, for: indexPath) as! TopCollectionViewCell
            cell.topLabel.text = "New Books!" // Displays a promotion for newly added books
            return cell
        case midCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.middleCell, for: indexPath) as! MidCollectionViewCell
            cell.midLabel.text = CategoryFunctions.categories[indexPath.row].categoryName
            cell.midImageView.image = CategoryFunctions.categories[indexPath.row].categoryImage
            return cell
        case botCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.bottomCell, for: indexPath) as! BottomCollectionViewCell
            cell.setupBot(item: BookFunctions.fantasyBooks[indexPath.row]) // Displays book details
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.bottomCell, for: indexPath)
            return cell
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainViewController: UICollectionViewDelegateFlowLayout {
    // Defines the size for each collection view item to maintain UI consistency.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case topCollectionView:
            return CGSize(width: 250, height: 128)
        case midCollectionView:
            return CGSize(width: 80, height: 100)
        case botCollectionView:
            return CGSize(width: 250, height: 300)
        default:
            return CGSize.zero
        }
    }
}
