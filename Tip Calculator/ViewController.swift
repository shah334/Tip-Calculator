//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Parshwa Shah on 12/26/17.
//  Copyright © 2017 Parshwa Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
            view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercents = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0 //if invalid, return 0
        let tip = bill * tipPercents[tipSelector.selectedSegmentIndex]
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

