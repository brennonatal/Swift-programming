// As the tradition says, the first program in a new language should print "Hello World!"
// so here is my first hello world in swift.

func helloWorld() {
    """Prints 'Hello World!' on the screen. Try giving your name as second argument of the command line."""
    if CommandLine.arguments.count == 2 {
        let name : String = CommandLine.arguments[1]
        print("Hello \(name)!")
    } else {
        print("Hello World!")
    }
}

helloWorld()