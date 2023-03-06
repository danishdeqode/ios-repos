import UIKit


//var message = "Hello, World!"
//var myClosure = { [message] in
//    print ([message])
//}
//message = "next"
//let inc = myClosure
//inc()



//=====================================================

//struct Point: Equatable {
//    var x: Int
//}
//
//struct X {
//    var point: Point {
//        didSet {
//            point.x = 0
//        }
//    }
//}
//
//let y = Point(x: 5)
//var p = X(point: y)
//let result = p.point.x == y.x



//=====================================================


//
//@objc class Person: NSObject {
//    @objc dynamic var name = "Taylor Swift"
//    @objc dynamic var email = "aaa"
//}
//
//let taylor = Person()
//
//
//taylor.observe(\Person.name, options: .new) { person, change in
//    print("I'm now called \(person.name)")
//}
//
//taylor.observe(\Person.email, options: .new) { person, change in
//    print("I'm now called email \(person.email)")
//}
//
//taylor.name = "Justin Bieber"
//taylor.email = "yyyy"



//=====================================================


//For serial execution
let execute =  DispatchQueue(label: "test")
execute.sync {
    print("task 1 start =>")
    for i in 0...10{
        print("task 1: \(i)")
    }

    print("task 1 end =>")
}
execute.sync {
    print("task 2 start =>")
    for i in 0...10{
        print("task 2: \(i)")
    }
    print("task 2 end =>")
}


//For concurrent execution
let execute1 =  DispatchQueue(label: "test", attributes: .concurrent)
execute1.async {
    print("task 1 start =>")
    for i in 0...10{
        print("task 1: \(i)")
    }
    
    print("task 1 end =>")
}
execute1.async {
    print("task 2 start =>")
    for i in 0...10{
        print("task 2: \(i)")
    }
    print("task 2 end =>")
}
