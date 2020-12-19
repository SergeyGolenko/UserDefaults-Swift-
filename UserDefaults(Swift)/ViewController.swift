//
//  ViewController.swift
//  UserDefaults(Swift)
//
//  Created by Сергей Голенко on 19.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let number = "0502274444"
    var count = 0
    
    func checkPhoneNumber(){
        if number == phoneNumber.text{
            count += 1
            phoneNumber.text = ""
            print(count)
        }
    }
    
    
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var countsLabel: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        checkPhoneNumber()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }


}

