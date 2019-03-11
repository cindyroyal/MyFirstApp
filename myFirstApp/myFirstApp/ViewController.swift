//
//  ViewController.swift
//  myFirstApp
//
//  Created by Cindy Royal on 1/12/19.
//  Copyright © 2019 Cindy Royal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var studentStatus: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        let name = myName.text!
        myLabel.text = "Hello \(name)"
        myName.resignFirstResponder()
    }
    @IBAction func selectStudent(_ sender: UISwitch) {
        if (sender as AnyObject).isOn {
            studentStatus.text = "student"
        } else {
            studentStatus.text = "non-student"
        }
    }
    
    
    @IBAction func myRating(_ sender: UISlider) {
        let rating = Float(sender.value)
        ratingLabel.text = "Your Rating: \(rating)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.text = "Your Name"

    }


}

