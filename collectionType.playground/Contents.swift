import UIKit
import Foundation

var greeting = "Collection Type"

//Array, sets, dictioaries, tuple for storing collection of value.
// Array are order collection of same values .
// Sets are unordered unqiue values
// Dictionaries are unordered collections of key-value association.
// Mutate ---> Changeable
// Immutable --> Non changealbe or permanenet

//var integerArray<Int> = []  // written in full

//MARK:   Array
var sampleArray: Array<Int> = [1,2,3,4,5] // full form Array syntax

var someInts: [Int] = []  // short form array syntax

print("array value count = \(someInts.count)")
someInts.append(1)
print(someInts)

var quickArray = Array(repeating: 3.0, count:5)
print(quickArray)
var floatNumArray = Array(repeating: 2.5, count: 3)

var addTwoArray = quickArray + floatNumArray

print(addTwoArray)

var list: [String] = ["Eggs","Milk","Butter"]
var shoppingList = ["shirt","belt","pant"]

if list.isEmpty{
    print("value doesn't exist")
} else {
    print("array has value")
}
shoppingList.append(String(3))
print(shoppingList)

shoppingList += ["shorts"]

print(shoppingList[0])
shoppingList[1] = "button"
print(shoppingList)

shoppingList[1...4] = ["banana", "kela"]
print(shoppingList)
print(shoppingList)
shoppingList.insert("kk", at: 3)

print(shoppingList)
shoppingList.remove(at: 2)
print(shoppingList)
shoppingList.removeLast()
print(shoppingList)

for eachItem in shoppingList.enumerated(){
    print(eachItem)
}
for (intger,stringValue) in shoppingList.enumerated(){
    print("item  \(intger + 1) -> \(stringValue)")
}
    
//MARK: SET
var letter = Set<Character>()
print(letter.count)

var setWet: Set<String> = ["A","B","c","d","d"]
print(setWet)

var arraa = Array<String>()

//MARK:  Set operations
    
var oddDigits: Set = [1,3,5,4,7,9,8]
var evenDigits: Set = [0,2,4,6,8,9]
let primeNumber: Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.symmetricDifference(evenDigits).sorted())
print(oddDigits.subtracting(evenDigits).sorted())
print(evenDigits.subtracting(oddDigits).sorted())

//MARK: Set membership and Equality


let setA: Set = [1, 2, 3, 4, 5, 10]
let setB: Set = [5, 2, 3]
let setC: Set = [ 11, 12, 13, 14, 15]

print(setA.isSubset(of: setB))
print(setA.isSuperset(of: setB))
print(setA.isDisjoint(with: setC))


//MARK: DICTIONARIES
// Keys and Values ,
// Type of keys should be same, and Type of Values shoulbe be same
// No order like array .


// In full:  Dictionary<key, Value>
let fullDictionary: Dictionary<Int, String> = Dictionary()
print(fullDictionary)
// Hashable ? Confirmation

//Shorthand
var nameOfInteger: [Int: String] = [1: "One", 2: "Two"]
print(nameOfInteger)

nameOfInteger[3] = "Three"
print(nameOfInteger)
nameOfInteger[3] = "four"
print(nameOfInteger)
//nameOfInteger = [:]
//print(nameOfInteger)

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]



if airports.isEmpty {
    print("empty")
} else {
    print("not empty")
}

airports["LHR"] = "London"
print(airports)
airports["LHR"] = "London Heathrow"
print(airports)

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("old value \(oldValue)")
}
if let airportName = airports["DUB"]{
    print(airportName)
} else {
    print("not exist")
}
print(airports)
if let removeValue = airports.removeValue(forKey: "DUB"){
    print(removeValue)
} else {
   print("nothing")
}
print(airports)

for (keyzz, Valuezz) in airports{
    print(keyzz,Valuezz)
}
for keysOnly in airports.keys{
    print(keysOnly)
}
for valueOnly in airports.values{
    print(valueOnly)
}
var airportsKeys: [String] = []
var airportsValue:  [String] = []

for ky in airports.keys{
  //  airportsKeys = [String](ky)
}
var arrJi: [String] = [String](airports.keys.sorted())
print( arrJi)
