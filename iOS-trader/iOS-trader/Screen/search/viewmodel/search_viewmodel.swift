//
//  search_viewmodel.swift
//  iOS-trader
//
//  Created by danish on 27/01/23.
//

import Foundation


class SearchViewModel{
    
    var result:[PostItem] = []
    private var searchText:String = ""
    var searchValue:String{
        get {
            return self.searchText
        }
        set(value) {
            self.searchText = value
        }
    }

    
    func search(_ text:String){
        print("calling API....")
        
        let api = NetworkC()
        guard let url = URL(string:"https://jsonplaceholder.typicode.com/posts/") else{
            print("URL error")
            return
        }
        api.excute(url) {
            (json, error) in
            if let error = error{
                print("API Error: \(error)")
            }
            else{
                print("API Response: \(String(describing: json))")
                
                // for single object
                // let pp = try! JSONDecoder().decode(PostItem.self, from: json as! Data)
                
                // for list of objects
                self.result = try! JSONDecoder().decode([PostItem].self, from: json as! Data)
                
            }
        }
    }
}
