//
//  singupLiveCountyController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import UIKit
import iOSDropDown

class SingupLiveCountryController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initDropdownList()
        // Do any additional setup after loading the view.
    }
    
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//
//        return true
//    }

    @IBOutlet weak var dropdwn: DropDown!
    
    func initDropdownList(){
        dropdwn.optionArray = SingupLiveHelper.shared.countries
        dropdwn.optionIds = [1,23,54]
        dropdwn.selectedRowColor = UIColor(named: "activeGreen") ?? .darkGray
        dropdwn.checkMarkEnabled = false
        
        // Image Array its optional

        // The the Closure returns Selected Index and String
        dropdwn.didSelect{(selectedText , index ,id) in
        print("Selected String: \(selectedText), index: \(index)")
            }
        
//
//        countryDropdown.didSelect{(selectedText , index ,id) in
//        self.countryDropdown.text = "Selected String: \(selectedText) \n index: \(index)"
//            }
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
