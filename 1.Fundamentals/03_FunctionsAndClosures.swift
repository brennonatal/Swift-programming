//  ------ FUNCTIONS ------     //

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))

// note: “By default, functions use their parameter names as labels for their arguments. 
// Write a custom argument label before the parameter name, or write _ to use no argument label.”
// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

func greet(_ person: String, on day: String) -> String{
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Friday"))

//  ------ RETURN MULTIPLE VALUES ------     //

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// prints "120"
print(statistics.2)
// prints "120"

//  ------ NESTED FUNCTIONS ------     //

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

//  ------ FUNCTION THAT RETURNS A FUNCTION ------     //

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

//  ------ FUNCTION PASSED AS ARGUMENT TO ANOTHER FUNCTION ------     //

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

// note: 
    // “Functions are actually a special case of closures: blocks of code that can be called later. 
    // The code in a closure has access to things like variables and functions that were available in the scope where the 
    // closure was created, even if the closure is in a different scope when it’s executed—you saw an example of this already with nested functions. 
    // You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.”

// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

// note: “When a closure is the only argument to a function, you can omit the parentheses entirely.”

// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

let sortedNumbers = numbers.sorted { $0 > $1}
print(sortedNumbers)

