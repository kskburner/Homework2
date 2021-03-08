//
//  ViewController.swift
//  HW2
//
//  Created by s on 03/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmount: UITextField!
    
    
    @IBOutlet weak var fifteenField: UILabel!
    @IBOutlet weak var twentyField: UILabel!
    @IBOutlet weak var twentyFiveField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bg()
    }


    @IBAction func onClick(_ sender: Any) {
        if let amountText = billAmount.text {
            let amount = Double(amountText) ?? 0
            
            fifteenField.text = String(format: "$%.2f",  (amount + (amount * 0.15)))
            twentyField.text = String(format: "$%.2f",  (amount + (amount * 0.20)))
            twentyFiveField.text = String(format: "$%.2f",  (amount + (amount * 0.25)))
            
            billAmount.text = ""
        }
    }
    
    func bg() {
      view.backgroundColor = .darkGray
    }
}

