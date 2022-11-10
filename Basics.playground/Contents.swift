import UIKit

var greeting = "Hello, playground"


//Data types
let tureFalse: Bool = true
let fraction: Float = 2.0
let longLength: Double = 12345
let number: Int = 100
let chars: String = "Waheguru"
// Array, Set, Dictionary --> Collection type
// Tuple -> familiar type. can return grouping of value
// Optional type --> There is a value or not at all
var changeValue: Int = 5
let maximumLoginAttemp = 10
var currentLoginAttemp = 0

//We can declar multiple type at single line
var x = 1.0, y = 3.4, z = 21.1
var num1 = 3, num2 = 2.4, char = "goodwill"

// Type annotation . declaring data type
var welcomeMessage: String
welcomeMessage = "Welcome to USA"
var  red, pink, green: Double

// type safe and type inference
var languageName = "Swift"
    languageName = "Swift++"

print(languageName)
print(languageName, terminator: "   XXX    ")
print(languageName)
// So print function has defualt paramenter ( separator and terminator)
// where terminator has default value of line break . if you don't mention it use that.

//MARK: STRING INTERPOLATION
let age: Int = 33
print("Age of Ravi Saini is : \(age)")

//MARK: COMMENTS are non executive able text in code
 // single line
/*
 Multi line
 comments
 */
// Nested Multiline comments

/*
 Heading
    /* Body */
 End
 */

//MARK: Semicolon
// not required but we can use after end of statement.
    // only required when multiple statemnet in same line

let cat = "catty"; var dog = "doggy"; print(cat,    separator:" ",  terminator: dog); print(" \(cat)  loves \(dog)")

//MARK: Integer Inbound
let minValue = UInt.min
let maxValue = Int.max
print("Min is :\(minValue)  Max is : ", separator:"",terminator: String(maxValue))
print("")
let max64bit = UInt64.max
print(max64bit)
// so if we only specify Int , swift automatically set it according to platform either 32 or 64

// Better to use Uint and Int  when we need spcific size number , becuae they have charatics of 32 and 64 as well

//MARK: Floating
// 32 bit is floting point number use Float 6 decicimal digits
// 64 bit use Double . 15 decimal digits

//MARK: Type safe, Type check , Interfence can infer any data type from data
// perfom type checks
let attemps = 5; let pi = 3.14
// swift automatically infer the data type for two contants  Int and Double
// by default consider Double to fraction number or decimal number
// --> Type check is performed while compling a data  or Compile time.
// --> Type inferernce is perfomed at compling time. swift find type of data

//MARK: Number system
let decimalInteger = 17
let binaryInterger = 0b10001
let octalInteger = 0o21   //17
let hexadecimalInteger = 0x11 //17
 

//MARK: Exponentional or Exponent
// 1.25e2  = 1.25 * 10 power 2 or 125.0
//1.25e-2  = 1.25 * 10 power -2 or 0.0125

// --> Any number signed and Unsigned called Litral
// In case of decimal for exponent , we use e or E but in case of Hexadeciaml for exponent, we use P or p
// Eg
var hexd = 0xFp2
// 15 * 2 power 2  or 60.0
print(hexd)
var hexd2 = 0xBP-2
print(hexd2)

let decimalDouble = 12.123456
let exponentDouble = 1.1234e2
let hexadecimalDouble = 0xC.3p1

let numericDouble = 00001234.567
let oneMillion = 1_000_000
print(oneMillion)
let justOverOneMillion = 1_000.000_000_1
print(justOverOneMillion)

//NOTE:- Use int for all numric conventional

var twoThousand: UInt16 = 2_000
let one: UInt8 = 2
twoThousand = twoThousand + UInt16(one)


var pie = 3.14
pie = pie + 5
print(pie)

//MARK: type aliases
// use another name for exisitnig
typealias Numeric16 = Int
let number6:Int16 = 44
print(number6)

print(Int16.max);print(Int64.max);print(Int32.max)

//MARK: Boolian or bool
let trueValue:Bool = true
let falseValue = false
if falseValue {
    print("true value")
}else{
    print("false value")}

let oneNum = 1
if oneNum == 1 {print("yes")}
if oneNum != 0 {print("yes")}

//MARK: Tuples
// grouping together value of different or same type into single compound value

let tupleSingh: (Int, String) = (401,"page not found")
var tuple22ji: (Int,Int,Int,Int,Int,Int,Double,Double) = (1,2,3,4,5,5, 3.14,3.14)

let (numberSingh, stringKaur) = tupleSingh
print(numberSingh,stringKaur)

let (webError,_) = tupleSingh
print(webError)

// Tuple can access by index number starting at 0 index number,
print(tupleSingh.0); print(tupleSingh.1)

let tupleValueAtsameTime = (statusCode: 200, value:"ok")
print(tupleValueAtsameTime.statusCode)
print(tupleValueAtsameTime.1)
print(tupleValueAtsameTime.0)
print(tupleValueAtsameTime.value)
print(tupleValueAtsameTime)
