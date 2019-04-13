import UIKit

var str = "Hello, playground"


func save() throws
//You must put calls to functions like this in a do {} block and use the word try to call them.
do {
    try context.save()
}catch let error{
    //error will be something that implements the Error protocol e.g. NSError
    // usually these are enums that have associated values to get error details
    throw error // this would re-throw the error (only ok if the method we are in throws)
}

//If you are certain a call will not throw,you can force try with try! ...
try! context.save() // will crash your program if save() actually throws an error

let x = try? errorProneFunctionThatReturnsAnInt() // x will be Int?



//Use Cases of Any

let attributes : [NSAttributedString.Key:Any] = [.strokeColor:#colorLiteral(red: 1, green: 0.6109774504, blue: 0.1809700295, alpha: 1)]

func prepare(for segue : UIStoryboardSegue,sender : Any?)



let unknown : Any = 5 //we cant send unknown a messaage because its"typeless"

//unknown. //nothing avaiable

//if let foo = unknown as? MyType{
//let MyType be Int
if let foo = unknown as? Int{
    //foo is of type MyType(Int) in here
    // so we can invoke MyType methods or access MyType vars in foo
    //if unknown was not of type MyType,then we will never get here
    print(foo.distance(to: 1))
}


let n = NSNumber(35.5)
let n1 : NSNumber = 35.5

let intified : Int = n.intValue //also doubleValue,boolValue,etc.

var isHidden : Bool


let pizzaJoint = "café pesto"
var attrString = NSMutableAttributedString(string: pizzaJoint)
let firstWordRange = pizzaJoint.startIndex..<pizzaJoint.firstIndex(of: " ")!
let nsrange = NSRange(firstWordRange, in: pizzaJoint) // convert Range<String.Index>
attrString.addAttribute(.strokeColor, value: UIColor.orange, range: nsrange)


