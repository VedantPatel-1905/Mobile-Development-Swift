// fig05-12: Mechanical example of a nested function

// return a function that determines the ordering of two Ints
func sortOrder(, #increasingOrder: Bool) -> (Int, Int) -> Bool {
    // return true if x and y are in ascending order
    func ascending(x: Int, y: Int) -> Bool {
        return x < y
    }

    // return true if x and y are in descending order
    func descending(x: Int, y: Int) -> Bool {
        return x > y
    }
    
    return (increasingOrder ? ascending : descending)
}

// get function for comparing Ints to see if they're in ascending order
var order = sortOrder(increasingOrder: true)

if order(7, 5) {
    print("7 and 5 are in ascending order")
} else {
    print("7 and 5 are not in ascending order")
}

// get function for comparing Ints to see if they're in descending order
order = sortOrder(increasingOrder: false)

if order(7, 5) {
    print("7 and 5 are in descending order")
} else {
    print("7 and 5 are not in descending order")
}

