//
//  APIResponseModel.swift
//  Netflix Clone
//
//  Created by danish on 05/02/23.
//

import Foundation

struct APIResponseModel: Decodable{
    let Search: [SearchModel]
    let totalResults:String
    let Response: String
}

struct SearchModel: Decodable{
    let Title:String
    let Year:String
    let imdbID:String
    let Poster:String
}
