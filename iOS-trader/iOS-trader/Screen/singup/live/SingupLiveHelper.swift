//
//  SingupLiveHelper.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import Foundation

class SingupLiveHelper{
    
    static var shared = SingupLiveHelper()
        
    private init(){}
    
    static func reset(){
        shared = SingupLiveHelper()
    }
    
}
