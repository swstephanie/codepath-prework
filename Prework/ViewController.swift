//
//  ViewController.swift
//  Prework
//
//  Created by Stephanie W on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        print("Hello")
        TextLabel.textColor = UIColor.orange
    }
    @IBOutlet weak var TextLabel: UILabel!
    
    @IBAction func ChangeBackgroundColor(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
    }
    @IBAction func ChangeTextString(_ sender: Any) {
        TextLabel.text = "Goodbye"
        print("Changed")
    }
}

