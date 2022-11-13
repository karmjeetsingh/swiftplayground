import UIKit

var greeting = "Basic Operators"
// Unary, Binary, Ternary
//Arithmetic(+,-,*,/,%), Logical(&& AND, ||OR ) , Range ( a...b, a..<b )

//Unary:  Prefix !b, -a , Postfix C!
//Binary  a + 2
// Ternary  ( a ? b : C )

//MARK:  assignment operator
var a = 10
var b = 4
a = a + b
b = a - b
a = a - b
print(a,b)

var (x, y) = (1, 1)

if x == y {
    print("lol")
}

let num1 = 12
let num2 = 7
print(num1 / num2)
print(num1 % num2)
var num3 = 2
num3 += 2
print(num3)

(1,"m") == (2,"z")
("blue")
"s"
588888

true == false
let av = true
let height = 9
(false ? 4 : 0)
(true ? 2 : 5)
 
let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader{
    rowHeight = contentHeight + 4
} else {
    rowHeight = contentHeight - 4
}
print(rowHeight)
print(a > 15 ? true : false)
print(a > 15 ? "bda hai" : "chota hai \n number ")

//MARK: NIL-COALESCING OPERATOR
// (a ?? b) unwrap optional a if it contains value, or if a is nil then, return default value b.
// value of a must be of optional type and both value should be of same type

var num8: Int?
print(num8 ?? num1)

//MARK:  Range operator
//closed range ( a...b ) a to b inlcuding a and b.  always a<b
for index in 1...10{
    
    print("\(a) * \(index) = \(a * index)")
}
for index in 11...30{
    print("Square of \(index) = \(index * index)")
   
}
for index in 11...30{
    
    print("Cube of \(index) = \(index * index * index)")
}

//MARK: HALF OPEN RANGE (A..<B) DOESN'T INLDUE B
 
let nameArray: [String] = ["a", "b","c","d","e"]

for i in 0..<nameArray.count{
    print("\(i + 1) is \(nameArray[i])")
}

//MARK: one sided ranges

for name in nameArray[1...]{
    print(name)
}
print(nameArray)

for name in nameArray[...2]{
    print(name)
}; print(nameArray)
for name in nameArray[..<2]{
    print(name)
}
nameArray.contains("a")
//MARK: LOGICAL OPTRS

// not

let invert = false
if !invert{
    print(!invert)
}

let doorkey = true
let scan = false
let handle = false
let passowrd = true

if doorkey && scan || handle || passowrd{
    print("welcome")
} else {
    print("access denied")
}

