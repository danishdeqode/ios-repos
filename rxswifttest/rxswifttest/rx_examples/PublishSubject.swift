//
//  PublishSubject.swift
//  rxswifttest
//
//  Created by danish on 05/03/23.
//

import Foundation
import RxSwift

class RxPublishSubject{
    static func runrx(){

        // Lets create a Publishsubject
        var publishSubject = PublishSubject<String>()
        
        // This will not affect the Subscription
        publishSubject.onNext("Hello") //ignored because not subscribed yet
        publishSubject.onNext("World") //ignored because not subscribed yet
        
        let subscription1 = publishSubject.subscribe(onNext:{
            print(#line,$0)
        })
        

        // This will emit to subscription1
        publishSubject.onNext("Hello") //printed by lin 36
        publishSubject.onNext("Again") //printed by lin 36
        
        let subscription2 = publishSubject.subscribe(onNext:{
            print(#line,$0)
        })
        
        publishSubject.onNext("Both will receive")
        
        //Dispose subscription 1 so just subscription 2 will receive the elements
        subscription1.dispose()
        
        publishSubject.onNext("Subscription2 will receive")
        //: [Next](@next)
        
    }
}
