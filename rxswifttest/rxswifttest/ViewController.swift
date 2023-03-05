//
//  ViewController.swift
//  rxswifttest
//
//  Created by danish on 05/03/23.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("==RxPublishSubject==")
        RxPublishSubject.runrx()
        
        
        print("==RxBehaviourSubject==")
        RxBehaviourSubject.runrx()
        
        
        print("==RxReplaySubject==")
        RxReplaySubject.runrx()

        
    }
    
   
}

