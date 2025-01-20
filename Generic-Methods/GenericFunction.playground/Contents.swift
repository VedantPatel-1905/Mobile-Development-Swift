// GenericFunction.playground
// Printing Array elements using a generic function.

// print an Array
// T is type placeholder
// you are passing array, type of its elements is represented by placeholder - T
// function name must be followed by place holder in the angle brackets < >
func printArray<T>(values: [T]) {
    print("[")
    for i in 0..<values.count {
        i < values.count - 1 ? print("\(values[i]), ") : print(values[i])
    }
    print("]")
} //end method

// create Arrays
let emptyIntegers: [Int] = []
let integers = [1, 2, 3, 4, 5, 6, 7]
let doubles = [1.1, 2.2, 3.3, 4.4]
let courses = ["Java", "PHP", "CSharp", "Swift"]

print("emptyIntegers contains: ")
printArray(values: emptyIntegers) // pass empty Int Array
print("\nintegers contains: ")
printArray(values: integers) // pass Int Array
print("\ndoubles contains: ")
printArray(values: doubles) // pass Double Array

print("\nString names contains: ")
printArray(values: courses) // pass String Array

// Generic cases:
// Searching..
// Swap/Exchanging the contents of two variables
//Sorting
//Generic Classes

// TODO:
// Define a character array and pass it to the function.
print()


