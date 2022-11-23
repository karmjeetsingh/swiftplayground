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

let somePoint = (1,1)
switch somePoint {
case (0,0): print("origin")
case (_,0): print("origin")
case (0,_): print("origin")
case (-2...2, -2..<2): print("origin")
default: print("ouside somewhere")
}


let graphPoint = (3,2)
switch graphPoint{
case (var x, 0): print("on x axies\(x)")
case (1, let y): print("on \(y) ")
case let(x,y): print(x,y)
}
