import UIKit

var greeting = "Enumeratoins"

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
//NOTE: give enum a singluar name rather then plural . so they read as self eivdent , kind of self explanry
var directionToHead = CompassPoint.west

directionToHead = .east

directionToHead = .south

switch directionToHead {
case .east:
    print("east")
case .south:
    print("south")
case .west:
    print("west")
case .north:
    print("norht")
default:
    print("no direction")
}

//MARK: Iterating over enum

enum Beverage: CaseIterable {
    case coffe, tea, juice
}
let numberOfChoice = Beverage.allCases.count
print(numberOfChoice)

for bev in Beverage.allCases{
    print(bev)
}
let enumValue = Beverage.coffe

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(1, 2, 3, 48)
//let productBarcode1 = Barcode.qrCode("agbaddc")
//print(productBarcode)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem),\(manufacturer),\(product),\(check)")
case .qrCode(let productCode):
    print("QR Code: \(productCode)")
}

// if we keep single let or Var
switch productBarcode {
case let .upc( numberSystem,  manufacturer,  product,  check):
    print("UPC: \(numberSystem),\(manufacturer),\(product),\(check)")
case .qrCode(let productCode):
    print("QR Code: \(productCode)")
}


//MARK: Raw Values

enum AsciiChar: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriage = "\r"
}

enum Planets: Int {
    case mercury = 1, venus, earth, mars, juptier, saturn, uranus, naptune
    
}
var rawValueInit = Planets(rawValue: 14)
print(rawValueInit)

print(Planets.earth.rawValue)
print(Planets(rawValue: 5))

//MARK: RECURSIVE  enum


//if we need all cases indirection
indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

enum Arithmetic{
    case number(Int)
    indirect case addition(Arithmetic, Arithmetic)
    indirect case multiplication(Arithmetic, Arithmetic)
}
// enum other instance with associative value

let four = Arithmetic.number(4) // enum instace and case
let five = Arithmetic.number(5)
let sum = Arithmetic.addition(five, four)
let multiple = Arithmetic.multiplication(sum, Arithmetic.number(4))

func answer(_ expression: Arithmetic) -> Int {
    switch expression {
    case  .number(let value):
        return value
    case let .multiplication(left, right):
        return answer(left) * answer(right)
    case let .addition(left, right):
        return answer(left) + answer(right)
    }
}
print(answer(sum))
