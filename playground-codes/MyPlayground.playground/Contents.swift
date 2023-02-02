import UIKit

//let count = 1...10
//
//for number in count {
//    print("Number is \(number)")
//}


//===============================
//swift function

//func square(numbers: Int...){
//    for number in numbers{
//        print("\(number) === ")
//    }
//}
//square(numbers: 1,2,3,4,5)


//+++++++++++++++++++++++++++++++

//func optionParam(_ value: Int=5){
//    print(value)
//}
//
//optionParam()
//optionParam(9)



//+++++++++++++++++++++++++++++++
// change passed value to function
// by default all perameters are constant/let
// use inout keyword in function parameter
//func change(_ val: inout Int){
//    val=9
//}
//
//var a = 1
//print(a)
//change(&a) //use & operator to pass reference
//print(a)

//https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-inout-parameters

//===============================
//closure function

//basic closue
let driving = {
    print("I'm driving in my car")
}
driving()

//closue with perameter
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving1("London")


//closure return value
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

print(drivingWithReturn("London"))

//closure as peramter
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)
