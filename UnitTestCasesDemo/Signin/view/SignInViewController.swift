//
//  ViewController.swift
//  UnitTestCasesDemo
//
//  Created by Puran on 20/09/23.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var _scrollView: UIScrollView!
    @IBOutlet weak var _lblMessage: UILabel!
    @IBOutlet weak var _viewContainer: UIView!
    @IBOutlet weak var _txtfEmailAddress: UITextField!
    @IBOutlet weak var _txtfPassword: UITextField!
    @IBOutlet weak var _btnLogin: UIButton!
    
    private var viewModel = SigninViewModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        _lblMessage.isHidden = true
    }
    @IBAction func btnLoginPressed(sender:UIButton){
        
        self.view.endEditing(true)
        _lblMessage.isHidden = true
        guard let email_address = self._txtfEmailAddress.text else{return}
        guard let password = self._txtfPassword.text else{return}
        viewModel.authenticateUserWith(email: email_address, andPassword: password)
        viewModel.loginCompletionHandler { status, message in
            
            if status{
                
                self._lblMessage.isHidden = false
                self._lblMessage.text = message
            }
            else{
                
                self._lblMessage.isHidden = false
                self._lblMessage.text = message
            }
        }
    }

}
