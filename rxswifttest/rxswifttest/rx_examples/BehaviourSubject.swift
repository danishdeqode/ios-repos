//
//  BehaviourSubject.swift
//  rxswifttest
//
//  Created by danish on 05/03/23.
//

import Foundation
import RxSwift

class RxBehaviourSubject{
    
    static func runrx(){

        // Lets create a BeviourSubject
        // A behaviour Subject needs a start value
        var behaviourSubject = BehaviorSubject<String>(value:"Just Sub 1")
        
        // This subscription will receive the Start Event
        let subscription1 = behaviourSubject.subscribe {
            print(#line,$0)
        }
//        subscription1.dispose()

        behaviourSubject.onNext("Also just Sub 1")

        // The most recent event will be world so line 24 will also print "World"
        behaviourSubject.onNext("Sub 1 & Sub 2")

        let subscription2 = behaviourSubject.subscribe{
            print(#line,$0)
        }
//        subscription2.dispose()


        // This will emit to both subscriptions
        behaviourSubject.onNext("Sub 1 & Sub 2 again")

        // Subscription 3 will start with this event because it is the most recent
        behaviourSubject.onNext("Sub 1 & Sub 2 & Sub 3")

        let subscription3 = behaviourSubject.subscribe {
            print(#line,$0)
        }
//        subscription3.dispose()

        behaviourSubject.onNext("Everyone will receive this one")

    }
}
