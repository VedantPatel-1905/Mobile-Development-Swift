// Examples: Adding and removing Array elements

// display contents, size and capacity of an Array<Int>
func displayIntegers(integers: [Int]) {
    print("contents: \(integers.description)")
    print("; size=\(integers.count); capacity=\(integers.capacity)")
}

var integers = [Int]() // create an empty variable Array<Int>
print("After creating integers")
displayIntegers(integers: integers) // function call

if integers.isEmpty { // true if integers contains 0 elements
    print("integers is empty")
}

// append each value of i to integers
print("\nAppending values 1-5")
for i in 1...5 {
    integers.append(i)
    displayIntegers(integers: integers) // func call
}

// inserting elements
integers.insert(0, at:0)
integers.insert(6, at:integers.count)
print("\nAfter inserting 0 at index 0 and 6 at integers.count")
displayIntegers(integers: integers)

// appending elements with +=
integers += [7, 8, 9]
print("\nAfter appending 7, 8 and 9 with +=")
displayIntegers(integers: integers)

// removing element 0 and the last element
print("\n\(integers.remove(at: 0)) was removed")
print("\(integers.removeLast()) was removed")
print("After removing element 0 and the last element")
displayIntegers(integers: integers)

// removing all elements
integers.removeAll() // by default, element storage is deallocated
print("\nAfter removing all remaining elements")
displayIntegers(integers: integers)

