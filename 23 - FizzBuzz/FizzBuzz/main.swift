
func fizzbuzz(startingInt start: Int, endingInt end: Int) {
    for i in start...end {
        let mods = (i % 3, i % 5)
        
        switch mods {
          
        case (0, 0):
            print("FizzBuzz")
        case (0, _):
            print("Fizz")
        case (_, 0):
            print("Buzz")
        default:
            print("\(i)")
            
        }
    }
}


fizzbuzz(startingInt: 10, endingInt: 15)