import UIKit


import Foundation
struct BlogPost: Decodable {
    
    enum Category: String, Decodable {//use decodable to serialize category field
        case swift, combine, debugging, xcode
    }

    let title: String //it will string
    let url: URL //it will URL type object
    let category: Category //it will enum type defined above, it can only hold string swift combine debugging xcode
    let views: Int //int type
}

let JSON = """
    {
    "title": "Optionals in Swift explained: 5 things you should know",
    "url": "https://www.avanderlee.com/swift/optionals-in-swift-explained-5-things-you-should-know/",
    "category": "xcode",
    "views": 47093
    }
"""

let jsonData = JSON.data(using: .utf8)!
let blogPost: BlogPost = try! JSONDecoder().decode(BlogPost.self, from: jsonData)

print(blogPost.title)

