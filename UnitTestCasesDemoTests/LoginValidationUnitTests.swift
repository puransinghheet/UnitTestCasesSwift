//
//  LoginValidationUnitTests.swift
//  UnitTestCasesDemoTests
//
//  Created by Puran on 20/09/23.
//

import XCTest
@testable import UnitTestCasesDemo

final class LoginValidationUnitTests: XCTestCase {
    
    func testEmailValidation_with_emptystring_returns_validation_fail(){
        
        let signinViewModel = SigninViewModel()
        signinViewModel.authenticateUserWith(email: "", andPassword: "")
        signinViewModel.loginCompletionHandler { status, message in
            
            XCTAssertFalse(status)
            XCTAssertNotNil(message)
            XCTAssertEqual(message, "Email address is blank")
        }
    }
    func testEmailValidation_with_invalidemail_returns_validation_fail(){
        
        let signinViewModel = SigninViewModel()
        signinViewModel.authenticateUserWith(email: "abc.com", andPassword: "")
        signinViewModel.loginCompletionHandler { status, message in
            
            XCTAssertFalse(status)
            XCTAssertNotNil(message)
            XCTAssertEqual(message, "Invalid Email address")
        }
    }
    func testPasswordValidation_with_emptystring_returns_validation_fail(){
        
        let signinViewModel = SigninViewModel()
        signinViewModel.authenticateUserWith(email: "abc@gmail.com", andPassword: "")
        signinViewModel.loginCompletionHandler { status, message in
            
            XCTAssertFalse(status)
            XCTAssertNotNil(message)
            XCTAssertEqual(message, "Password address is blank")
        }
    }
    
    func testEmailValidation_with_emptystring_returns_validation_fail2(){
        
        let signinViewModel = SigninViewModel()
        signinViewModel.authenticateUserWith(email: "      ", andPassword: "")
        signinViewModel.loginCompletionHandler { status, message in
            
            XCTAssertFalse(status)
            XCTAssertNotNil(message)
            XCTAssertEqual(message, "Email address is blank")
        }
    }
    func testPasswordValidation_with_emptystring_returns_validation_fail2(){
        
        let signinViewModel = SigninViewModel()
        signinViewModel.authenticateUserWith(email: "abc@gmail.com", andPassword: "     ")
        signinViewModel.loginCompletionHandler { status, message in
            
            XCTAssertFalse(status)
            XCTAssertNotNil(message)
            XCTAssertEqual(message, "Password address is blank")
        }
    }
}
