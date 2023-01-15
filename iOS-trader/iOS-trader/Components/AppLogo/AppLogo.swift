//
//  AppLogo.swift
//  iOS-trader
//
//  Created by danish on 14/01/23.
//

import UIKit

class AppLogo: UIView {

    
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
        Bundle.main.loadNibNamed("AppLogo", owner: self, options: nil)
        addSubview(containerView)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
