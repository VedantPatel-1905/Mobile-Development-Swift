//
//  ResultViewController.swift
//  Bookstore
//
//  Created by Sukhpreet Saini on 2025-04-03.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultView.cornerRadius = 10
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)    }
    
}
