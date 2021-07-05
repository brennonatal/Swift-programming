//  ------ CLASSES ------     //

class Shape {

    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape called \(name) has \(numberOfSides) sides."
    }

    // note: Use deinit to create a deinitializer if you need to perform some cleanup before the object is deallocated
}

var shape = Shape(name: "Hexagon") // creating an instance of Shape
shape.numberOfSides = 6 // accessing properties with "."
var shapeDescription = shape.simpleDescription()

//  ------ SUBCLASSES ------     //

class Square: Shape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4   // superclass properties are inherited
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    // overring method from superclass 
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let testSquare = Square(sideLength: 5.2, name: "my square")
print(testSquare.area())
print(testSquare.simpleDescription())

class Circle: Shape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)

    }

    func area() -> Double {
        return 2 * Double.pi * radius
    }

    override func simpleDescription() -> String {
        return "A circle with radius of length \(radius)"
    }
}

let testCircle = Circle(radius: 3.7, name: "my circle")
print(testCircle.area())
print(testCircle.simpleDescription())

//  ------ GETTERS AND SETTERS ------     //

class EquilateralTriangle: Shape {
    
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    // note: “In the setter for perimeter, the new value has the implicit name newValue. You can provide an explicit name in parentheses after set.”
    // Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a equilateral triangle")
print(triangle.perimeter)   // getting
triangle.perimeter = 9.9    // setting
print(triangle.sideLength)

// note: “If you don’t need to compute the property but still need to provide code that’s run before and after setting a new value, use willSet and didSet”
// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }

    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)

    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)


//  ------ MORE ABOUT OPTIONALS ------     //

// note: “When working with optional values, you can write ? before operations like methods, properties, and subscripting. 
// If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. 
// Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value. 
// In both cases, the value of the whole expression is an optional value.”

// Excerpt From: Apple Inc. “The Swift Programming Language (Swift 5.4).” Apple Books. https://books.apple.com/br/book/the-swift-programming-language-swift-5-4/id881256329?l=en

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength