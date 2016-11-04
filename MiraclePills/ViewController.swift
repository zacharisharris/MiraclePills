//
//  ViewController.swift
//  MiraclePills
//
//  Created by Harris Zacharis on 1/11/16.
//  Copyright © 2016 Harris Zacharis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var purchaseAlert: UIImageView!
    
    let states = ["Alaska", "Arizona", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello World!")
        //self.view.backgroundColor = UIColor.purple
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryTextField.isHidden = true
        zipCodeTextField.isHidden = true
        countryLabel.isHidden = true
        zipCodeLabel.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTextField.isHidden = false
        zipCodeTextField.isHidden = false
        countryLabel.isHidden = false
        zipCodeLabel.isHidden = false
    }
    
    @IBAction func purchaseItem(_ sender: AnyObject) {
        purchaseAlert.isHidden = false
    }
}

