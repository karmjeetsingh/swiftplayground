import UIKit

var greeting = "structure and classes"

struct Resolution {
    var width = 0
    var height = 0
    //stored properties
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String? // contain nil by default
}

// instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

// Accessing Properties
print(someResolution.width)
print(someVideoMode.resolution.height) // sub property
someVideoMode.resolution.height = 55
print(someVideoMode.resolution.height)

 someVideoMode.resolution.height = 5
print(someVideoMode.resolution.height)
// someResolution.height = 6
//print(someResolution.height)
print(someVideoMode.resolution.height)
print(someResolution.height)

let vga = Resolution(width: 34, height: 53)

//Note: Integer, float, Boolean, strings, array, dictionarie are value type. ? ? and implemented as stucture behind the scene
// Struct and enum are value type

// shared memeory copy optimzatoin used by array, dic, strings  for better performance.

var hd = Resolution(width: 44, height:  55)
print(hd.width)

var cinema = hd
print(cinema.width)
hd.width = 566

print(cinema.width)
cinema.width = 2034
print(hd.width)


let tenEighty = VideoMode()
// tenEighty don't store VideoMode instance , it refer to videoModie instance

tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080I"
tenEighty.frameRate = 25.0

// Even its constant , the fameRate propety of underliying VideoMode that's changes, not the value of the constant reference to that VidoeMode.

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 45.66
print(alsoTenEighty.frameRate)
print(tenEighty.frameRate)

//MARK: IDENTITY OPERATOR
// === ,  !==   not

if tenEighty === alsoTenEighty {
   print( "yes")
}

//POINTER 
