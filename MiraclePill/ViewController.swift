//
//  ViewController.swift
//  MiraclePill
//
//  Created by Lane Faison on 5/10/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var viewScreen: UIView!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTF: UITextField!
    
    let states = ["Alaska","California","Colorado","New Jersey","New York","Texas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTF.isHidden = true
        zipLabel.isHidden = true
        zipTF.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //refers to the number of columns we want
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal) // Changes label title to the picked state
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTF.isHidden = false
        zipLabel.isHidden = false
        zipTF.isHidden = false
    }
    
    @IBAction func buyTapped(_ sender: Any) {
        viewScreen.isHidden = true
    }
    
}

