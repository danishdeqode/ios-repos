//
//  AppTextField.swift
//  iOS-trader
//
//  Created by deq on 10/01/23.
//

import Foundation
import UIKit
class AppTextField: UIView{
    
    @IBOutlet var containerView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
    }
    
    func viewInit(){
        Bundle.main.loadNibNamed("AppTextField", owner: self, options: nil)
        addSubview(containerView)
    }
    
}
