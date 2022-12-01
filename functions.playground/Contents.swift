import UIKit
import SwiftUI

var greeting = "Functions"

func greet(person: String) -> String {
   return  "hello   " + person + "..."
}

 print(greet(person: "siya"))

func demo(condition: Bool){
    return
}
print(demo(condition: true))

var minArr : [Int] = []
var maxArr : [Int] = []
func minMax(numArray: [Int]) -> (min: Int, max: Int){
    var min: Int = numArray[0]
    var max: Int = numArray[0]
    for value in numArray[0..<numArray.count]{
        if value < min {
            min = value
            minArr.append(value)
        } else if value > max {
            max = value
            maxArr.append(value)
        }
    }
    return (min, max)
}
var tupli = minMax(numArray: [1200,3,56,72,1,2,4,400])
print("Min is : \(tupli.0) \nMax is : \(tupli.max)")
print(maxArr)
print(minArr)

func minMaxOptional(numArray: [Int]) -> (min: Int, max: Int)? {
    if numArray.isEmpty { return nil }
    var min: Int = numArray[0]
    var max: Int = numArray[0]
    for value in numArray[0..<numArray.count]{
        if value < min {
            min = value
            minArr.append(value)
        } else if value > max {
            max = value
            maxArr.append(value)
        }
    }
    return (min, max)
}
var tupl = minMaxOptional(numArray: [])
print("Min is : \(String(describing: tupl?.0)) \nMax is : \(String(describing: tupl?.max))")


// if expression of a function in just one line return . We can omit return keyword , even it will return without return keyword . or behavour is same
func welcome(for person: String) -> String {
    return "Hi " + person + "how are you?"
}

// parameter name, and argument label
// in above  for:   is argument lable
func welcome(person: Character) -> Character {
      person
}
print(welcome(for: "sim sim"))
print(welcome(person: "D"))

//func returnNumber(_: Int) -> Int {
//
//}
//print(returnNumber( 12))

// omiting argument lables with _

func omiting(_ parameterName : Int){
    print(parameterName * 3)
}
//calling function without name becuase _
omiting(5)

func omiting(argumentLable parameterName : Int){
    print(parameterName + 2)
}
omiting(argumentLable: 2)
    //  default value paramenter should be written in last .. in a fucntion
// first we should wirte a parameter without default value becoz that is most importnat to function meaning

//MARK: VARIADIC  parameters (...)
// ParamenterName: type...
// after paramenter's type name  and value passed to variadic paramenter is available as array in function's body of particular type .
// number: Double...  so it will be availalbe as numbers of [Double]
//NOTE: first parameter that comes after a variadic paramenter must have an arugent label.
// Variadic paramenter can't be inout paramenter

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total = total + number
    }
    return total/Double(numbers.count)
}
arithmeticMean(3,4,5,7,8.6)

func arithmatic(_ num: Int... , calling numb2: Int){}
// argument label name after varidic parametner .. must be

//  MARK: IN-0UT PARAMETER
// mention before paramenter type
// function paramenter are constant by default. if try to change paramenter value it give error
// Inout para can't have default values  while calling them we need to add & sign

func swapNumber(  num1: inout Int, num2: inout Int){
    num1 = num1 + num2
    num2 = num1 - num2
    num1 = num1 - num2
}
var number = 5
var number2 = 10
print(number, number2)
swapNumber(num1: &number, num2: &number2)
print(number, number2)

//MARK: Function Type
// Act as other data  type like Int, Double, String
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
var mathFunc: (Int, Int) -> Int = multiplyTwoInts
// swift type-checker will allow this referce of a function to function type
print(mathFunction(8, 5))
print(mathFunc(2, 9))

var moreShort = addTwoInts
// swift will infer type of addtwoInts
print(moreShort(4, 5))


//MARK:  function type as parameter type

func printMathResult(_ mathFunction: (Int, Int) -> Int, a: Int, b: Int){
    print(mathFunction(a, b))
}

printMathResult(addTwoInts, a: 3, b: 5)
printMathResult(multiplyTwoInts, a: 4, b: 5)

//MARK:  function type as return type

func stepUp(_ input: Int) -> Int {
    return input + 1
}
func stepDown(_ input: Int) -> Int {
    return input - 1
}

// these function are of type  (Int) -> Int

func chooseStep(backword: Bool) -> ((Int) -> Int){
    return backword ? stepDown : stepUp
}
var currentValue = 5
let moveToZero = chooseStep(backword: currentValue > 0)
while currentValue != 0 {
    print(currentValue)
    currentValue = moveToZero(currentValue)
}
        
//MARK:  Nested functions

// little complex 
















