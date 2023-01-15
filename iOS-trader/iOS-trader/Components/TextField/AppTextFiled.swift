//
//  AppTextFiled.swift
//  iOS-trader
//
//  Created by deq on 10/01/23.
//

import UIKit

class AppTextField: UIView {


    @IBOutlet var containerView: UIView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        viewInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
    }
    
    func viewInit(){
        let xibView = Bundle.main.loadNibNamed("AppTextFiled", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
    }
    
    
}
