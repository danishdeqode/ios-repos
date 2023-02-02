//
//  ComponentController.swift
//  Programmatically
//
//  Created by deq on 01/02/23.
//

import UIKit

class ComponentController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButton()
        addButtonWithConstraint()
        // Do any additional setup after loading the view.
    }
    
    
    func addButton(){
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Button 1", for: .normal)
        
        self.view.addSubview(button)
        button.frame = CGRect(x: 50, y: 200, width: 80, height: 32)
        
        //add button action method
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc func tap(){
        print("tap")
    }
    
    func addButtonWithConstraint(){
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Button 2", for: .normal)
        
        self.view.addSubview(button)
        button.frame = CGRect(x: 50, y: 200, width: 80, height: 32)
        
        //IMP for deactivate default constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // There are 2 ways to apply constraints, use any one
        
        //option-1
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            button.heightAnchor.constraint(equalToConstant: 32),
//            button.widthAnchor.constraint(equalToConstant: 80)
//        ])
//
        //option-2
//        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
//        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
//        //constraint to fill entire screen
//        NSLayoutConstraint.activate([
//            button.topAnchor.constraint(equalTo: self.view.topAnchor),
//            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
//        ])
        
        
        //constraint to fill %wise
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
            button.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5),
        ])
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
