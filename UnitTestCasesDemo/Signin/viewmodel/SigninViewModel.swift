//
//  SigninViewModel.swift
//  UnitTestCasesDemo
//
//  Created by Puran on 20/09/23.
//

import UIKit

class SigninViewModel: NSObject {

    var user:User!
    typealias authenticationLoginCallback = (_ status:Bool, _ message:String) -> Void
    var loginCallBack:authenticationLoginCallback?
    
    func authenticateUserWith(email:String, andPassword password:String){
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            
            if self.isBlankString(text: email){
                
                //empty email
                self.loginCallBack?(false, "Email address is blank")
            }
            else{
                
                if !self.isValidEmail(testStr: email){
                    
                    self.loginCallBack?(false, "Invalid Email address")
                }
                else if self.isBlankString(text: password){
                    
                    // empty password
                    self.loginCallBack?(false, "Password address is blank")
                }
                else{
                    
                    self.verifyEmailAndPassword(email: email, andPassword: password)
                }
            }
        }
    }
    
    fileprivate func verifyEmailAndPassword(email:String, andPassword password:String){
        
        self.loginCallBack?(true, "Successfully authenticated...")
    }
    func loginCompletionHandler(callback: @escaping authenticationLoginCallback){
        
        self.loginCallBack = callback
    }
}
