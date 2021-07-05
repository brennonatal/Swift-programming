//  ------ CONDITIONALS AND LOOPS ------     //

let individualScores = [75, 34, 83, 26, 42]
var teamScore = 0


for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
    print(teamScore)
}

//  ------ OPTIONAL VARIABLES ------     //

var optionalString : String? = "Hello"
print(optionalString == nil)
// prints "false"

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello world!"
}
print(greeting)
//  ---- HANDLING OPTIONALS ----    //

let nickname: String? = nil
let fullName: String = "John Byers"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

//  ------ SWITCH CASE ------     //
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")    
}
// note: “Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.”
// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en


//  ------ ITERATING OVER DICTIONARIES AND ARRAYS ------     //

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind: String = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("The largest number is \(largest) and it's kind is \(largestKind)")

//  ------ WHILE ------     //

var n = 2 while n < 100 {
    n *= 2
}
print(n)

var m = 2 
repeat {
    m *= 2
} while m < 100

var total = 0 
for i in 0..<4 {
    total += i
}
print(total)
// note: “Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.”
// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en


