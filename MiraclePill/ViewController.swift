//
//  ViewController.swift
//  MiraclePill
//
//  Created by Luis Ramos on 1/22/17.
//  Copyright © 2017 BoriLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    @IBOutlet weak var miraclePillText: UILabel!
    @IBOutlet weak var priceTag: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeText: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["New York", "California", "Illinois", "Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeText.isHidden = true
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
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeText.isHidden = false
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        miraclePillEmoji.isHidden = true
        miraclePillText.isHidden = true
        priceTag.isHidden = true
        divider.isHidden = true
        fullNameLabel.isHidden = true
        fullNameText.isHidden = true
        addressLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        stateLabel.isHidden = true
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeText.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtn.isHidden = true
        successImage.isHidden = false
    }
    

}

