//
//  ViewController.swift
//  Prework
//
//  Created by Stephanie W on 8/22/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    
}

