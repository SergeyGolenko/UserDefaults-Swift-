//
//  ViewController.swift
//  UserDefaults(Swift)
//
//  Created by Сергей Голенко on 19.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    let key = "1111"
    let number = "0502274444"
    var count = 0
    
    
  
    
    func checkPhoneNumber(){
        if number == phoneNumber.text{
            count += 1
            phoneNumber.text = ""
            countsLabel.text = String(count)
            UserDefaults.standard.set(count,forKey: key)
        }
    }
    
    
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var countsLabel: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        checkPhoneNumber()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = UserDefaults.standard.data(forKey: key){
            if let data2 = data as? Int {
                count = data2
                countsLabel.text = String(count)
                
            }
        }
         
    }


}

