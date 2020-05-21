import UIKit

// MARK:- What version of Swift?

#if swift(>=5.2)
print("Hello, Swift 5.2")
#elseif swift(>=5.1)
print("Hello, Swift 5.1")
#elseif swift(>=5.0)
print("Hello, Swift 5.0")
#elseif swift(>=4.1)
print("Hello, Swift 4.1")
#elseif swift(>=4.0)
print("Hello, Swift 4.0")
#elseif swift(>=3.0)
print("Hello, Swift 3.x")
#else
print("Hello, Swift 2.2")
#endif

// MARK:- using key paths

struct Book
{
    let title:String
}

let books: [Book] = [
    Book(title: "Followship of the rings"),
    Book(title: "The two towers"),
    Book(title: "Return of the king")
]

// before passing functions
let titles = books.map { $0.title }

/*
 
//swift 5.2 passing argument
let titles2 = books.map(\.title)
 
As a variable in swift 5.2
let keyPath:(Book) -> String = \Book.title
let titles3 = books.map(keyPath)
*/

// MARK:- Trailing Closures

func traillingClosureFunction(closure: () -> Void)
{
    closure()
}

// Call this function without using a trailing closure:
traillingClosureFunction(closure: { print("hello Bob") })

// Call this function with a trailing closure instead:

traillingClosureFunction() { print("hello Jill") }

// Sorted function using trailing closures
let names = ["Jenny", "Bob", "Jane", "Katie", "Freda"]

print( names.sorted() { $0 > $1 } )

//simpler (?) syntax
print( names.sorted { $0 < $1 } )

// MARK:- Capturing values

//reads func update value takes nothing and returns a closure which returns nothing
func updateValue ()->()->()
{
    let capturedValue = 0
    
    return {print(capturedValue)}
}

let captureClosure = updateValue()

captureClosure()

// external argument, internal parameter that's an int. Returns a closure that returns an int
func makeAdder(add amount: Int) -> () -> Int {
    var total = 0
    
    return {() -> Int in total += amount; return total }
}

let addTwenty = makeAdder(add: 20)
addTwenty()
addTwenty()

let addTen = makeAdder(add: 10)
addTen()
addTen()

var capturedValue = 5
func updateValueMattsExample() -> () -> () {
    let toReturn = {print(capturedValue)}
    return toReturn
}
capturedValue = 4
let captureClosureMattsExample = updateValueMattsExample()
captureClosure()


// MARK:- Closures are reference types

let addTwentyReference = addTwenty

addTwentyReference() //Prints 60
addTwenty()          //Prints 80

func  updateValue2 ()->()->()
{
    var capturedValue = 1
    
    return { capturedValue += 3; print(capturedValue)}         // increments by 3
}

let captureClosure2 = updateValue2()

let sameClosure = captureClosure2

captureClosure2()  //Prints 4

sameClosure()      //Prints 7

// MARK:- Escaping and Non-escaping closures


var storedEscapingClosure:(() -> Void)? = nil

func escapingClosureFunction(passedClosure: @escaping () -> Void) {
    storedEscapingClosure = passedClosure
}

func nonescapingClosureFunction(closure: () -> Void) {
    closure()
}

class exampleClass {
    var x = 10
    func runClosures() {
        escapingClosureFunction { self.x = 123 }
        nonescapingClosureFunction { x = 456 }
    }
}

let instance = exampleClass()

instance.runClosures()

print(instance.x)
// Prints "456"

storedEscapingClosure?()

print(instance.x)
// Prints "123"

// MARK:-// Autoclosures

var socialDistanceQueue = ["John", "Jane", "Tom", "Dick", "Harry","Freda"]
print(socialDistanceQueue.count)

// Prints "6"

let shopCheckout = { socialDistanceQueue.remove(at: 0) }
print(socialDistanceQueue.count)
// Prints "6"

print("Current customer at checkout is \(shopCheckout())")
// Prints "Current customer at checkout is John"

print(socialDistanceQueue.count)
// Prints "5"

func serveAtCheckout(customer checkout:() -> String) {
    print("Now serving \(checkout())")
}
serveAtCheckout(customer: { socialDistanceQueue.remove(at: 0) } )
// Prints "Now serving Jane"
func serveAtSecondCheckout(customer checkout:@autoclosure () -> String) {
    print("Now serving \(checkout())")
}
serveAtSecondCheckout(customer: socialDistanceQueue.remove(at: 0))
// Prints "Now serving Tom"

