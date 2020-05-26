import Foundation

// Using key paths

struct Book
{
    let title:String
}

let books: [Book] = [Book(title: "Fellowship of the ring"),Book(title: "The two towers"), Book(title: "Return of the king")]

// Before:
let titles = books.map { $0.title }

// Swift 5.1:
let titles2 = books.map(\.title)

let keyPath:(Book) -> String = \Book.title

let titles3 = books.map(keyPath)


// Trailing closures

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

print( names.sorted { $0 < $1 } )


// Capturing values

func updateValue ()->()->()
{
    let capturedValue = 0
    
    return {print(capturedValue)}
}

let captureClosure = updateValue()

captureClosure()


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


// Closures are reference types

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


// Escaping and Non-escaping closures

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
// Prints "200"

storedEscapingClosure?()
print(instance.x)
// Prints "100"


// Autoclosures

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
