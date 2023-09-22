//
//  StringExtensions.swift
//  UnitTestCasesDemo
//
//  Created by Puran on 20/09/23.
//

import Foundation

extension NSObject{
    
    func isBlankString(text:String)->Bool {
        
        if(text.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count == 0) {
            
            return true
        }
        return false
    }
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: testStr)
    }
}
