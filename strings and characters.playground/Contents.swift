import UIKit

var greeting = "strings and characters"
//MARK:  Strings are Value type.  or copy type. not refercne tpe
// Struct and Enumeration are Value or Copy type. where class is reference type.

// Multiline string
let quote: String = """
adsfg
a
asfasfasdf
asdf
asdf
af
asf
af
"""
print(quote)

// Use # both side of string to print special symbol as it is like /n ., instread of creating new line it print as.
//          #"line1 \n line 2"#

var string1 = "WaheGuru"
var string2 = String()
if string1 == string2 {
    print(true)
}
if string2.isEmpty{
    print("khali hai")
}
var str = "cat"
str += "dog"
print(str)


for eachChar in str{
    print(eachChar)
}

var catChars: [Character] = ["c","a","t","s","3",]
print(String(catChars))
//print(Character(str)) wrong
print(str + string2 + string1)
var stringCat = "Meow Meow"
var stringDog = "Bau Bau"
stringDog += stringCat
print(stringDog)
stringDog.append(" bulldog")
print(stringDog)
catChars.append("s")
print(catChars)
let number = 3
print("\(number) times 2.5 is \(Double(number) * 2.5)")

print(#"sting aeasdfadg \#(number) sadfafaf"#)
print(#"sting aeasdfadg \(number) sadfafaf"#)

var strg = "abc"
var strg1 = strg
strg1 = "bcd"
print(strg)

// Every instance of Swift's Character type represents a single extended grapheme cluster.
// An extened grapheme cluster is a sequence of one or more Unicode scalars that ( when combined _ produce a single humna reable character.
// if we include the grapheme cluster in a string. It doesn't increase string count.
// Eg.

// multiple Unicode Scalars

var word = "cafe"
print("number of char in word \(word.count)") // 4
word = word + "\u{301}"
word += "\u{302}"
print(word.count)
print(word)
print(word.startIndex)
print(word.endIndex)

print(word[word.startIndex])
//  print(word[word.endIndex]
//word.index(after: String.Index);
//word.index(before: String.Index);
//word.index(String.Index, offsetBy: Int);
//word.index(String.Index, offsetBy: Int, limitedBy: String.Index)

print(word[word.index(before: word.endIndex)])
print(word[word.index(after: word.startIndex)])

let particularIndexLocation = word.index(word.startIndex, offsetBy: 2)
print(particularIndexLocation)
print(word[particularIndexLocation])


//MARK: INDICES Property

for index in word.indices{
    //print(index)
    print(word[index],terminator: "")
}

var welcome = "MostWelcome"
welcome.insert("s", at: welcome.endIndex)

welcome.insert(contentsOf: "at home", at: welcome.index(before:  welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -4)..<welcome.endIndex
print(range)
welcome.removeSubrange(range)


//MARK:  SUBSTRINGS
    // convert substring into instance of string to save for long time
    // Both string and substring conform to the stringProtocol
// String consider equal if  their extended grapheme cluster are canonically equivalent.


