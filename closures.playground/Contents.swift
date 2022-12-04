import UIKit
var greeting = "Closure"

// Closure are self contained block of functionality that can be passed around in code. closure can capture and store reference to any constant and variable from the context in which they're defined.
// this is known as closing over those constant and variables.

var name: [String] = ["name11", "name2", "name13", "name4"]

func shortOrderfunction(_ a: String, _ b: String) -> Bool {
    return a > b
}

var order = name.sorted(by: shortOrderfunction)
print(order)


var shortbyClosure = name.sorted(by: {(s1: String, s2: String) -> Bool
    in
    return s1 < s2
})
print(order)


//var short = name.sorted(by: {u1: String , u2: String return u1 > u2})
var shortsingh = name.sorted(by: {$0 > $1})
print(shortsingh)
    
//MARK: TRailing closure : if closure expression is function's last argument and closure body is long, we can write trainling closure
// write trailing closure  after function's parantheses,
// when we use trailing closure syntax, don't write the argument label for the first closure as part of function cal..
// a function call can include multiple clsoure.

func functionthatTakeClosure(closure: () -> Void) {
    
}

// calling without trailing clousr
functionthatTakeClosure(closure:  {
    // closure body
})

// calling with trailing closure
functionthatTakeClosure() {
    // trailing closure body
}
  // eg.
order = name.sorted(){$0 > $1}

// if closure express is only argument then omit function paranethesis

order = name.sorted {$0 > $1}

// Array has  map() method which take closure as single expression

let digitName = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine"]
let numbers = [15, 56, 6400]
let strings = numbers.map{ numberArgu -> String in
    var numVar = numberArgu
    var stringOutput = ""
    repeat {
        stringOutput = digitName[numVar % 10]! + stringOutput
        
        numVar /= 10
        print(stringOutput)
    } while numVar > 0
    return stringOutput
}
//NOTE:-  parameter, of function and closure always constant

// if function take multiple closure, you omit the argument lable for fisrt trailing closure and label the remianing trainling closure.
class Server {}
struct Picture {}
//func download(){}
    /*
func loadPicutre(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void){
    if let picture = download("photo.jpg", from: Server){
        completion(picture)
    } else {
        onFailure()
    }
}
calling function with two closure or completion handler clsure
loadPicutre(from: SomeServer) { Picture in
    <#code#>
} onFailure: {
    <#code#>
}
*/

// NOte: Instread of multiple completion handler which is hard to read.  the other approach is asyncrhonous code, concurrency .


// Capturing Values

//closure can capture value of its srounded constant and varialbe .
// Best example is nested function where inner function can capture outer functoin's argument and also any sontatn and vairalb defined within the outer function. becaue i think that act as global for inner. wher global fucntion or variable have scope thorughtout the program.


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let output = makeIncrementer(forIncrement: 10)
print(output())
print(output())

// retain own refernce
let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())
print(incrementBySeven())


print(output())

//MARK:  closure are refernce type

//Important: Function and closure are reference types.

//MARK: eacaping closure
// closure is said to escape a function when closure is passed as an argument to function but is called after functoin returns.
// write a @escaping  keyword before closure paramenter

var completionHand: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void){
    completionHand.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}
class SomeClass{
    var x = 10
    func doSomeThing(){
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}
let instance = SomeClass()
instance.doSomeThing()
print(instance.x)

completionHand.first?()
print(instance.x)

class SomeOtherClass {
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure {
        [self] in x = 100
        }
       // someFunctionWithNonescapingClosure(x = 200)
    }
}

//MARK: Autoclosure

