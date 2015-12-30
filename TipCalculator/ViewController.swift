//
//  ViewController.swift
//  TipCalculator
//
//  Created by Victoria Wei on 12/5/15.
//  Copyright © 2015 Victoria Wei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Settings(sender: AnyObject) {
        performSegueWithIdentifier("goToView2", sender: sender)    }
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var Selection: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TipLabel.text="$0.00";
        TotalLabel.text="$0.00";
    }
    @IBOutlet weak var TotalLabel: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func ifChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.18, 0.20];
        var Percentage = tipPercentages[Selection.selectedSegmentIndex];
        var billAmount = Double(BillField.text!);
        var tip = 0.00;
        var total = 0.00;
        if(billAmount == nil)
        {
            
            TipLabel.text = String(format: "$%.2f", tip);
            TotalLabel.text = String(format: "$%.2f", total);
            return;
        }
        if(billAmount != nil)
        {
            tip = billAmount! * Percentage;
            total = billAmount! + tip;
        }
        else
        {
            return;
        }
        
        TipLabel.text = String(format: "$%.2f", tip);
        TotalLabel.text = String(format: "$%.2f", total);
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
}