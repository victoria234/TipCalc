//
//  viewController2.swift
//  TipCalculator
//
//  Created by Kevin J Nguyen on 12/5/15.
//  Copyright © 2015 Victoria Wei. All rights reserved.
//

import UIKit

class viewController2: UIViewController {
    @IBOutlet weak var Switchhh: UISwitch!
    @IBOutlet weak var Still: UILabel!
    @IBAction func Reasoning(sender: UISwitch) {
        if(Switchhh.on)
        {
            Still.text = "There still isn't a reason for this";
            Switchhh.setOn(true, animated: true);
        }
        else
        {
            Still.text = " ";
            Switchhh.setOn(false, animated: true);
        }
    }
    @IBAction func BackButton(sender: UIBarButtonItem) {
         performSegueWithIdentifier("ToMain", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }}