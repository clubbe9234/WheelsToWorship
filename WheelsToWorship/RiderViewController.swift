//
//  RiderViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/19/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class RiderViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetNameTextField: UITextField!
    @IBOutlet weak var houseNumberTextField: UITextField!
    @IBOutlet weak var townTextField: UITextField!

    var driver: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let massChoiceVC = segue.destination as! MassChoiceViewController
        let name = getNameInput()
        massChoiceVC.name = name
        let streetName = getStreetNameInput()
        massChoiceVC.streetName = streetName
        let houseNumber = getHouseNumberInput()
        massChoiceVC.houseNumber = houseNumber
        let town = getTownInput()
        massChoiceVC.town = town
        nameTextField.resignFirstResponder()
        streetNameTextField.resignFirstResponder()
        houseNumberTextField.resignFirstResponder()
        townTextField.resignFirstResponder()
    }
    
    func getNameInput() -> String {
        if let name = nameTextField.text {
            return name
        } else {
            return ""
        }
    }
    
    func getStreetNameInput() -> String {
        if let streetName = streetNameTextField.text {
            return streetName
        } else {
            return ""
        }
    }
    
    func getHouseNumberInput() -> String {
        if let houseNumber = houseNumberTextField.text {
            return houseNumber
        } else {
            return ""
        }
    }
    
    func getTownInput() -> String {
        if let town = townTextField.text {
            return town
        } else {
            return ""
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
