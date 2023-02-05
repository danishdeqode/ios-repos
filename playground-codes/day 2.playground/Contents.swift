import UIKit


//var message = "Hello, World!"
//var myClosure = { [message] in
//    print ([message])
//}
//message = "next"
//let inc = myClosure
//inc()



//=====================================================

struct Point: Equatable {
    var x: Int
}

struct X {
    var point: Point {
        didSet {
            point.x = 0
        }
    }
}

let y = Point(x: 5)
var p = X(point: y)
let result = p.point.x == y.x
