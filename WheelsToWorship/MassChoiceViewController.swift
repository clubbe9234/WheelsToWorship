//
//  MassChoiceViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/30/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class MassChoiceViewController: UIViewController {

    @IBOutlet weak var massSegmentedControl: UISegmentedControl!
    
    var name: String!
    var makeAndModel: String!
    var streetName: String!
    var houseNumber: String!
    var town: String!
    var driver: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
   
    var massAttending = ""
   
    @IBAction func massSegmentedControlAction(_ sender: UISegmentedControl) {
        
        switch massSegmentedControl.selectedSegmentIndex {
        case 0:
            massAttending = "5pm Saturday"
        case 1:
            massAttending = "7am Sunday"
        case 2:
            massAttending = "8:30am Sunday"
        case 3:
            massAttending = "10am Sunday"
        case 4:
            massAttending = "11:30am Sunday"
        case 5:
            massAttending = "5pm Sunday"
        default:
            massAttending = "5pm Saturday"
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let correctInfoVC = segue.destination as! CorrectInfoViewController
        correctInfoVC.name = name
        correctInfoVC.makeAndModel = makeAndModel
        correctInfoVC.streetName = streetName
        correctInfoVC.houseNumber = houseNumber
        correctInfoVC.town = town
        correctInfoVC.mass = massAttending
        correctInfoVC.driver = driver
        
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
