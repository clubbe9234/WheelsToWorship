//
//  CorrectInfoViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/30/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class CorrectInfoViewController: UIViewController {
    
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var makeAndModelTitleLabel: UILabel!
    @IBOutlet weak var streetNameTitleLabel: UILabel!
    @IBOutlet weak var houseNumberTitleLabel: UILabel!
    @IBOutlet weak var townTitleLabel: UILabel!
    @IBOutlet weak var massTitleLabel: UILabel!
    @IBOutlet weak var riderOrDriverTitleLabel: UILabel!
    
    
    var name: String!
    var makeAndModel: String!
    var streetName: String!
    var houseNumber: String!
    var town: String!
    var mass: String!
    var driver: Bool!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if driver == true {
            riderOrDriverTitleLabel.text = "Rider or Driver? Driver"
            streetNameTitleLabel.text = ""
            houseNumberTitleLabel.text = ""
            townTitleLabel.text = ""
            makeAndModelTitleLabel.text = "Car Make & Model: " + makeAndModel
        } else {
            riderOrDriverTitleLabel.text = "Rider or Driver? Rider"
            makeAndModelTitleLabel.text = ""
            streetNameTitleLabel.text = "Street Name: " + streetName
            houseNumberTitleLabel.text = "House Number: " + houseNumber
            townTitleLabel.text = "Town/City: " + town
        }
        
        nameTitleLabel.text = "Name: " + name
        massTitleLabel.text = "Mass Atending: " + mass
        

        // Do any additional setup after loading the view.
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
