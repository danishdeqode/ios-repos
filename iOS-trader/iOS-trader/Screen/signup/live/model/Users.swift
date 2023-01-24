//
//  Users.swift
//  iOS-trader
//
//  Created by danish on 22/01/23.
//

import Foundation

//   let users = try? JSONDecoder().decode(Users.self, from: jsonData)

import Foundation

// MARK: - Users
struct Users: Codable {
    let status: String
    let data: [Datum]
    let message: String
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}


struct Post: Codable {
    let id, userID: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case title, body
    }
}



//=======

