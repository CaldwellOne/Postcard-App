//
//  ViewController.swift
//  Postcard
//
//  Created by jcaldwell on 12/6/14.
//  Copyright (c) 2014 CaldwellOne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messegeLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!

    @IBOutlet weak var enterMessegeTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messegeLabel.hidden = false
        messegeLabel.text = enterMessegeTextField.text
        messegeLabel.textColor = UIColor.redColor()
        
        enterMessegeTextField.text = ""
        enterMessegeTextField.resignFirstResponder()
        
        mailButton.setTitle("Messege Sent", forState: UIControlState.Normal)
    }


}

