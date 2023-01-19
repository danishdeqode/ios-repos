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
    

    
    @IBOutlet weak var countryDropdown: DropDown!
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        initDropdownList()
        return true
    }
    
    func initDropdownList(){
        print("...")
        countryDropdown.optionArray = ["Option 1", "Option 2", "Option 3"]
        //Its Id Values and its optional
//        countryDropdown.optionIds = [1,23,54,22]

        // Image Array its optional
//        countryDropdown.ImageArray = [👩🏻‍🦳,🙊,🥞]
        
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
