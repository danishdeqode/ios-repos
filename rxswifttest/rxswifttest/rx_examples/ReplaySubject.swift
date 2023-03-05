//
//  ReplaySubject.swift
//  rxswifttest
//
//  Created by danish on 05/03/23.
//

import Foundation
//
import Foundation
import RxSwift

class RxReplaySubject{
    static func runrx(){

        var replaySubject = ReplaySubject<String>.create(bufferSize: 2)

        var sub1 = replaySubject.subscribe {
            print(#line,$0)
        }

        replaySubject.onNext("check point 1")
        replaySubject.onNext("check point 2")
        replaySubject.onNext("check point 3")
        replaySubject.onNext("check point 4")
        replaySubject.onNext("check point 5")
        replaySubject.onNext("check point 6")
        
        

        let sub2 = replaySubject.subscribe {
            print(#line,$0)
        }
        //if i dispose sub1 and subscribe again it will get last 2(bufferSize) records,
        //actually we are creating new reference it will work like new subscription
//        sub1.dispose()
//        sub1 = replaySubject.subscribe {
//            print(#line,$0)
//        }
        

        
    }
}
