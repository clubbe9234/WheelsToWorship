//
//  ApprovedOrDeniedViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/27/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ApprovedOrDeniedViewController: UIViewController {

    @IBOutlet weak var approvedOrDeniedTextView: UITextView!
    var name: String!
    var makeAndModel: String!
    var driver: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //approvedOrDeniedTextView.text = "You have not been approved."

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let massChoiceVC = segue.destination as! MassChoiceViewController
        massChoiceVC.name = name
        massChoiceVC.makeAndModel = makeAndModel
        massChoiceVC.driver = driver
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
