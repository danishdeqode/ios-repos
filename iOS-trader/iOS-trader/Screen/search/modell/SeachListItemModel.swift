//
//  SeachListItemModel.swift
//  iOS-trader
//
//  Created by danish on 27/01/23.
//

import Foundation

struct PostItem: Decodable{
    let id:Int
    let userId:Int
    let title:String
    let body: String
}
