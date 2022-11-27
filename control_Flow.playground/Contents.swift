import UIKit
import Foundation
var greeting = "Control Flow"

// while loop, if else, guard, switch

//FOR IN LOOP

let names = ["A","B","C","D"]
for names  in names {
   print(names)
}

let animals = ["spider": 1, "ant":2, "cat": 4]
var name: [String] = []
var number: [Int] = []

for (animal, num) in animals{
    name.append(animal)
    number = [Int](arrayLiteral: num)
    print(number)
}
print(name)
print(number)


// Closed range operator  (...)
// 1...5



let base = 3
let power = 3
var answer = 1
for _ in 1...power {
    answer = answer * power
}
print(answer)
let mintues = 60
for tickMark in stride(from: 0, to: mintues , by: 5) {
    print(tickMark)
}

// Apple documentation in switt loops chapter in that search for sequence protocol


//MARK:  Snake and ladder Game
let finalSquare = 25
var board: [Int] = [Int](repeating: 0, count: finalSquare + 1)
print(board)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02;
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08;

var square = 0
var diceRoll = 0

while square < finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    square  += diceRoll
    if square < board.count {
        print(board.count)
        square += board[square]
    }
}
print("GAme Over")
//print( Array(repeating:6, count: 4))
////MARK: while loop and repeat-while loop
//var i = 1
//while i < 10 {
//    print(i)
//    i += 1
//}
var i = 0
repeat {
    print(i)
    i += 1
} while i < 0
i = 15
switch i {
case  0 : break
case  1 : break
case  2, 3, 5 : print("many number")
default:
    print("out of range")
}

let somePoint = (0,0)
switch somePoint {
case (0,0):print("break"); break
case (_,0): print("origin")
case (0,_): print("origin2")
case (-2...2, -2..<2): print("origin..ttyjty")
default: print("ouside somewhere")
}
let graphPoint = (3,2)
switch graphPoint{
case (var x, 0): print("on x axies\(x)")
case (1, let y): print("on \(y) ")
case let(x,y): print(x,y)
}

// Continue statement
// stop what you are doing and  continue from next iteration
// without leaving the loop

let puzzleInput: String = "great minds think alike"
var puzzleOutput = ""
let characterToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for charact in puzzleInput {
    if characterToRemove.contains(charact){
        continue
    }
    puzzleOutput.append(charact)
}
print(puzzleOutput)

var num1 = 5
num1 *= 2

print(num1)


while i <= 60 {
    print(i)
    if i == 50 { break}
    i += 1
}

let integer = 5
var des = "the number \(integer)"

switch integer {
case 1, 2, 4, 6, 7, 5:
    des += "a prime number and "
    fallthrough
default:
    des += "an integer number"
}
print(des)

//MARK:  Labeled Statements
// multiple loops and conditional statemtement some time hard to visualize, In that case labeled statements very useful.
var loopOne: Int = 0
functionalityOne: while loopOne <= 5 {
    print(loopOne)
    
    break functionalityOne
}

//MARK: WHERE CLAUSE
/* switch can use where clause to check addtional condition */
let daig = (1,2)
switch daig{
case let (x,y) where x == y: print("ok")
case var (x,0) where x < 2: print("less then 2")
case (var x, var y) where x < y : print("x < y")
case var(x,u): print(x,u)
    
}

//MARK: GUARD STATEMENT  , Early exit
/* guard is alternative to if and else, but in guard else alwasy comes , code continue to execute if guard condition is ture */

func greet(person: [String: String]){
    guard let name = person["name"] else {
        return
    }
    print("ehllo \(name)")
    
    guard let location = person["location"] else {
        print(" nice near u ")
        return
        //fatalError("googli")
    }
    print("weather location \(location)")
}
greet(person: ["name" : "jon"])
greet(person: ["name" : "jogi singh", "location ": "MD"])


//MARK: API AVAILABILITY
if #available(iOS 10, macOS 11.2, *){
    
} else {
    
}

@available(mac 10.12, *)
struct ColorPreference {
    var bestColor = "blue"
}

func chooseBestColor() -> String {
    guard #available(macOS 10.12, *) else {
        return "gray"
    }
    let colors = ColorPreference()
    return colors.bestColor
}
