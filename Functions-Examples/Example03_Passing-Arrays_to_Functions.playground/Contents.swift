import Cocoa

// Example: Passing entire Arrays and individual
// array elements by value and by reference

// multiply all elements by 2--original Array not modified
func doesNotModifyArray( values: [Int]) {
    var values = values
    for i in 0 ..< values.count {
        values[i] *= 2
    }
} // end func
// multiply individual element by 2--original Array not modified
func doesNotModifyElement( element: Int) {
    var element = element
    element *= 2
}
// multiply all elements by 2--original Array modified
func modifyArray(values: inout [Int]) {
    for i in 0 ..< values.count {
        values[i] *= 2
    }
}
// multiply individual element by 2--original Array modified
func modifyElement(element: inout Int) {
    element *= 2
}
var integers = [1, 2, 3, 4, 5]
// pass entire Array by value
print("integers before doesNotModifyArray: \(integers.description)")
doesNotModifyArray(values: integers)
print("integers after doesNotModifyArray: \(integers.description)")

// pass one Array element by value
print("\nintegers[3] before doesNotModifyElement: \(integers[3])")
doesNotModifyElement(element: integers[3])
print("integers[3] after doesNotModifyElement: \(integers[3])")

// pass entire Array by reference
print("\nintegers before modifyArray: \(integers.description)")
modifyArray(values: &integers) // & indicates pass by reference
print("integers after modifyArray: \(integers.description)")

// pass one Array element by value
print("\nintegers[3] before modifyElement: \(integers[3])")
modifyElement(element: &integers[3]) // & indicates pass by reference
print("integers[3] after modifyElement: \(integers[3])")

// display contents, size and capacity of an Array<Int>

func displayIntegers(integers: [Int]) {
    print("contents: \(integers.description)")
    print("; size=\(integers.count); capacity=\(integers.capacity)")
}

var values = [Int]() // create an empty variable Array<Int>
print("After creating integers")
displayIntegers(integers: values) // function call

if values.isEmpty { // true if integers contains 0 elements
    print("integers is empty")
}

// append each value of i to integers
print("\nAppending values 1-5")
for i in 1...5 {
    values.append(i)
    displayIntegers(integers: values) // func call
}
