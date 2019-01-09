//
//  LoggedInViewController.swift
//  WheelsToWorship
//
//  Created by Caroline Lubbe on 11/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    var driver: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "driverChosenSegue" {
            driver = true
            let driverVC = segue.destination as! DriverViewController
            driverVC.driver = driver
        } else {
            driver = false
            let riderVC = segue.destination as! RiderViewController
            riderVC.driver = driver
        }
    }
    
//    @IBAction func driverButton(_ sender: Any) {
//
//        driver = true
//    }
//
//    @IBAction func needARideButton(_ sender: Any) {
//
//        driver = false
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
