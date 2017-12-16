//
//  ViewController.swift
//  OTP
//
//  Created by Vera on 12/16/17.
//  Copyright © 2017 Vera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var lb1: UILabel!
    var text = String()
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
         print("viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        print("view will apper")
        
    }


}
extension ViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == tf1{
            lb1.backgroundColor = UIColor.red
        }else if textField == tf2{
            lb2.backgroundColor = UIColor.red
        }else if textField == tf3{
            lb3.backgroundColor = UIColor.red
        }else if textField == tf4{
            lb4.backgroundColor = UIColor.red
        }
   }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == tf1{
             lb1.backgroundColor = UIColor.black
        }else if textField == tf2{
            lb2.backgroundColor = UIColor.black
        }else if textField == tf3{
            lb3.backgroundColor = UIColor.black
        } else if textField == tf4{
            lb4.backgroundColor = UIColor.black
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if ((textField.text?.count)! < 1  && string.count > 0){
            if(textField == tf1){
                tf2.becomeFirstResponder()
            }
            if(textField == tf2){
                tf3.becomeFirstResponder()
            }
            if(textField == tf3){
                tf4.becomeFirstResponder()
            }
            textField.text = string
            return false
            
        }else if ((textField.text?.count)! >= 1  && string.count == 0){
            // on deleting value from Textfield
            if(textField == tf2){
                tf1.becomeFirstResponder()
            }
            if(textField == tf3){
                tf2.becomeFirstResponder()
            }
            if(textField == tf4) {
                tf3.becomeFirstResponder()
            }
            textField.text = ""
            return false
        }else if ((textField.text?.count)! >= 1  ){
            if textField == tf1{
                tf2.becomeFirstResponder()
            }else if textField == tf2{
                tf3.becomeFirstResponder()
            }else if textField == tf3{
                tf4.becomeFirstResponder()
            }
            textField.text = string
            return false
        }
        return true
    }
    
}

