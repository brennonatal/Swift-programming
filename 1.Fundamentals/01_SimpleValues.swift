//  ------ VARIABLE ------  //

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble : Double = 70
let explicitFloat : Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples)."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
    I said "I have \(apples)."
    And then I said "I have \(apples + oranges) pieces of fruit.
"""

//  ------ ARRAYS AND DICTIONARIES ------  //

var shoppingList = ["catfish", "water", "chocolate"]
shoppingList[1] = "juice"


var occupations = [ 
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Brenno"] = "Programmer"

shoppingList.append("coffee")
print(shoppingList)

var emptyArray = [String]()
var emptyDictionary = [String: Float]()

emptyArray = [String]()
emptyDictionary = [String: Float]()
