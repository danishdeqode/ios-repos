//
//  SingupDemoHelper.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import Foundation

class SingupDemoHelper{
    static var shared = SingupDemoHelper()
        
    private init(){
        print("init demo helper")
    }
    
    static func reset(){
        shared = SingupDemoHelper()
    }
}
