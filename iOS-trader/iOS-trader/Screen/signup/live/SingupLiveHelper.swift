//
//  SingupLiveHelper.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import Foundation

class SingupLiveHelper{
    
//    var email:String = ""
//    var password:String = ""
//    var firstName:String = ""
//    var lastName:String = ""
//    var dob:String = ""
    
    static var shared = SingupLiveHelper()
        
    private init(){}
    
    static func reset(){
        shared = SingupLiveHelper()
    }
    
    private var userEmail:String = ""
    var email:String{
        get {
            return self.userEmail
        }
        set(value) {
            self.userEmail = value
        }
    }
    
    private var userFirstName:String = ""
    var firstName:String{
        get {
            return self.userFirstName
        }
        set(value) {
            self.userFirstName = value
        }
    }

    private var userLastName:String = ""
    var lastName:String{
        get {
            return self.userLastName
        }
        set(value) {
            self.userLastName = value
        }
    }

    
    private var userPassword:String = ""
    var password:String{
        get {
            return self.userPassword
        }
        set(value) {
            self.userPassword = value
        }
    }
    
    private var userConfirmPassword:String = ""
    var confirmPassword:String{
        get {
            return self.userConfirmPassword
        }
        set(value) {
            self.userConfirmPassword = value
        }
    }
    
    
    private var userDob:Date = Date.now
    var dob:Date{
        get {
            return self.userDob
        }
        set(value) {
            self.userDob = value
        }
    }
    
    
    
    
    private var userCounter:String = ""
    var country:String{
        get {
            return self.userConfirmPassword
        }
        set(value) {
            self.userConfirmPassword = value
        }
    }
    
    
    let countries:[String] = [
        "India",
        "UK",
        "US"
    ]
    
    
}
