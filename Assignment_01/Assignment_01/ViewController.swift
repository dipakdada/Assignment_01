//
//  ViewController.swift
//  Assignment_01
//
//  Created by Aress109 on 10/27/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //  TextField for username
    @IBOutlet weak var userNameTxt: UITextField!
    //  TextField for password
    @IBOutlet weak var passwordTxt: UITextField!
    //  Login Button
    @IBOutlet weak var loginBtn: UIButton!
    //  Loader
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Method for Initialization of TextField variables
        textFieldInit()
        activityIndicator.hidesWhenStopped = true
    }
    func textFieldInit(){
        userNameTxt.becomeFirstResponder()
        userNameTxt.delegate = self
        passwordTxt.delegate = self
    }
    
    // Login Button method
    @IBAction func loginUser(){
        //  start activity indicator
        activityIndicator.startAnimating()
        
        if (userNameTxt.text?.isEmpty == true) && (passwordTxt.text?.isEmpty == true){
            activityIndicator.stopAnimating()
            self.showAlert(title: "Alert!!!", message: "Please enter username and password")
        }
        else if (userNameTxt.text?.isEmpty == true){
            activityIndicator.stopAnimating()
            self.showAlert(title: "Alert!!!", message: "Please enter username")
        }
        else if (passwordTxt.text?.isEmpty == true){
            activityIndicator.stopAnimating()
            self.showAlert(title: "Alert!!!", message: "Please enter password")
        }
        else {
            activityIndicator.stopAnimating()
            //  All details are fillled then this code will execute
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(vc, animated: true)
            self.present(vc, animated: true)
        }
    }
    
    // Show Alert
    func showAlert(title : String,message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { action in
            self.dismiss(animated: true)
        }
        alert.addAction(action)
        self.present(alert, animated: true,completion: nil)
    }
    
    //  Validation on username TextField to enter only alphabets & numbers
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: ".*[^A-Za-z0-9].*", options: [])
            if regex.firstMatch(in: string, options: [], range: NSMakeRange(0, string.count)) != nil {
                return false
            }
        }
        catch {
            self.showAlert(title: "Alert!!!", message:"Something went Wrong")
        }
        return true
    }
}

