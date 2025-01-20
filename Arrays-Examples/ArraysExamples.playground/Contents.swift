// COMP2125- Mobile App Development
// Prepared by: Prof. Sujeet Lohan

// ArraysExamples.playground
/*...
 
 >> Few Things about Arrays and their syntax and characteritics:

1. More powerful than C# and Java
2. It is group of data values/items which are given a common name
3. With array declaration, you specify..
 a. Name of an array
 b. What is it's type ( i.e. types of its elements )
 c. Size of an array - how many elements
4. Arrays are homogenious in nature, linear and contiguous.
5. In Swift, arrays are dynamic.
6. Indexing starts at 0.
 
...*/

import UIKit

// .... Example 01: Array declaration and initialization
var a:Int // this is an integer variable
var a1:[Int] // this is an Array declaration. Subscript or square bracket is used.

// Differet types of arrays
var intArray:[Int] = [101, 102, 103] // declaration and initialization
let doubleArray:[Double] = [ 101.25, 102.45, 103.65] // A constant array
var courses = ["Swift", "Java", "Python"] // Type inference - type of courses array  will be a string array
var gradeCodes = ["A", "B", "C", "D"]
var bucketList: [String] = ["Swift Programming"]  // one string element is assigned
var courseName = ["Swift Programming", "Java"]  // Type inference is used

// Create and display an empty Array<Int>
let integers1 = [Int](arrayLiteral: 10, 20, 30)
var numArray:Int

print("integers1: \(integers1.description)")

// Create and display an Array<Bool> with all elements set to true
let booleans = [Bool](repeating: true, count: 5)
print("booleans: \(booleans.description)")

// Create and display an empty Array<Int> using an empty initializer list
let integers2: [Int] = [] // must specify Array's type
print("integers2: \(integers2.description)")

// Type inferred as Array<Int> (i.e., [Int]) from initializer list
let integers3 = [0, 1, 2, 3, 4]
print("integers3: \(integers3.description)")
print("integers3: \(integers3)")


// Type inferred as Array<String> (i.e., [String]) from initializer list
let strings = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
print("strings: \(strings.description)")

// ... Example 02: Adding elements to an array by using append() method
var newbucketList = ["Climb Mt. Everest"]
newbucketList.append("Fly hot air balloon to Fiji")
newbucketList.append("Go on a walkabout")
newbucketList.append("Scuba dive in the Great Blue Hole") // Total 4 elements
print(newbucketList.description)

// ... Example 03: count , capacity, max, min, first, last, printing individual elements and range ...//
var grades = [56, 75, 81, 44, 60, 34] // Type inference - integer array

// count property - number of elements
print(grades.count)

// capacity - indicates total size of an array
print(grades.capacity)
//grades.remove(at: 2)
//print(grades.count)
//print(grades.capacity)

// Displaying contents of an array using description property
print(grades.description)
// Finding max, min, last and first elements of an array.
print("Max Value: \(grades.max()!)") // Maximum , with "!", value is unwrapped
print("Min Value: \(grades.min()!)") // Minimum
print(grades.last!) // last element
print(grades.first!) // first element

(grades)
// Printing an array elements using for loop
for grade in grades {
    print(grade)
}

// ... Printing first three elements ....
var stockvalues = [66.7, 175, 80.50, 44.60, 65.15, 34.0]
print(stockvalues[0...2]) // prints values at index level 0,1 and 2

// ... Printing individual elements ...
print(grades[2], grades[3])
print(grades[2], grades[3], separator: ";") // using a seperator

// ... Example 04: Summing individual array elements ...//
var sum = grades[2] + grades[4] // Adding the 3rd and 5th element
print(sum)

// ...  Example 05: Adding all the elements of an array  ....//
var total = 0
for grade in grades
{
    total = total + grade
}
print("Sum of array values: \(total)")

// ... Example 06: Updating a value ...//
// value before
print(newbucketList[0])
newbucketList[0] = "Climb Mt. Kilimanjaro"

// ... Example 07: Removing an item from an array ...

print(grades.description)
print(grades.count) // Here count value is equal to (=6) number of elements present
grades.remove(at: 2) // 3rd element is removed, i.e. element at index 2 is removed
print(grades.count) // count value is 5 after deleting one element
print(grades.capacity) // capacity value remains same i.e. 6
print(grades.description)

//.... Example 09: Using a loop to append items from one array to another ...//

var mybucketList = ["Climb Mt. Everest"]
var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

for item in newItems {
    mybucketList.append(item)
}
mybucketList.remove(at:2)
print(bucketList.count)
print(mybucketList[0...2])
mybucketList[2] += " in Australia" // you are appeding this string to the exiting value of the element
print(mybucketList[2])
mybucketList[0] = "Climb Mt. Kilimanjaro"
print(mybucketList)

//... Example 10: Initialization using repeating keyword

var intNumbers = [Int](repeating: 10, count: 3)
var someVar = intNumbers[0]
print( "Value of first element is \(someVar)" )
print( "Value of second element is \(intNumbers[1])" )
print( "Value of third element is \(intNumbers[2])" )
print("Value of third element is " + String(intNumbers[2])) // type casting

//.... Example 11: Adding elements by appending ...//

var intVals = [Int]() // This is an empty array
intVals.append(20)
intVals.append(30)
intVals += [40]
var num = intVals[0]
print( "Value of first element is \(num)" )
print( "Value of second element is \(intVals[1])" )
print( "Value of third element is \(intVals[2])" )

// .... Example 12: Copying an array to another using an assignment operator

var items = [11, 22, 33, 44, 55]
var itemsCopy = items // In one assignment statement, you can copy one array to another
items[0] = 100
print(items) // Without the use of description property, you can display the array elements
print(itemsCopy)

//... Example 13: Iterating through Array elements

let integers = [2, 4, 6, 8, 10]

// for loop explicitly specifying how to count
print("\n\nArray integers selected elements ")
print("in column format via counter-controlled for loop")
print("Index  Value")
for index in 0..<integers.count
{
    print(String(format:"%5d%7d", index, integers[index]))
    //print(String(format:"%-5d%-7d", index, integers[index])) // printing in left justified manner
}

//... Example 14: More operations on Arrays

// Type inferred as Array<Int> (i.e., [Int]) from initializer list
let integers4 = [0, 1, 2, 3, 4]
print("integers4: \(integers4.description)")

// creating a new Array by concatenating existing Arrays with +
let integers5 = integers4 + integers4
print("integers5: \(integers4.description)")

// concatenating an existing Array and an Array literal with +
let integers6 = integers4 + [5, 6, 7, 8, 9]
print("integers6: \(integers6.description)")

 var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
 print("numbers: \(numbers.description)")

 // selecting the elements at indices 3...7 in integers
 var subset = numbers[3...7] // using range to intialize new array subset
 print("subset of numbers: \(subset.description)")

 // replacing the elements at indices 5...9
 print("numbers: \(numbers.description)")
 numbers[5...9] = [50, 60, 70] // elements between index values 5 and 9 i.e. 6, 7, 8
 print("numbers after replacing elements: \(numbers.description)")

 // removing the elements at indices 5...7
 numbers[5...7] = []
 print("numbers after removing elements 5-7: \(numbers.description)")

 // removing the elements at indices 0..<2 (i.e., 0 and 1)
 numbers[0..<2] = []
 print("numbers after removing elements 0-1: \(numbers.description)")

//... Example 15: Iterating through Array elements ...//

// for...in loop with enumerated() global function
let intValues = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
print("\nArray integers in column format via for...in loop with enumerated")
print("Index  Value")
for (index, element) in intValues.enumerated() {
 print(String(format:"%5d%7d", index, element))
}

//... Examples 16: Adding and removing Array elements with append and insert methods

var values = [Int]() // create an empty variable Array<Int>
print("After creating integers")

if values.isEmpty { // true if integers contains 0 elements
    print("integers is empty")
}

// append each value of i to integers
print("\nAppending values 1-5")
for i in 1...5 {
    values.append(i)
}
print(values)

// Inserting elements
values.insert(0, at:0)
values.insert(6, at:values.count)

print("\(values.removeLast()) was removed")
print("After removing element 0 and the last element")
print(values)

// removing all elements
values.removeAll() // by default, element storage is deallocated
print("\nAfter removing all remaining elements")
print(values)

//...Example 17: TWO DIMENSIONAL ARRAYS ........//

let array1 = [[1, 2, 3], [4, 5, 6]]
print("Values in array1 by row:")
for row in array1 {
    for column in array1{
       print("\(column)  ")
    } // end inner for
    print()
} // end outer for

// Printing array1 values in one-go
print(array1)

print("\nValues in array1 by row using indices:")
for row in 0 ..< array1.count {
    for column in 0 ..< array1[row].count {
        print("\(array1[row][column])  ")
    } // end inner for loop
    print()
} // end outer for loop

let array2 = [[1, 2], [3], [4, 5, 6]]
print("\nValues in array2 by row:")
for row in array2 {
    for column in row {
       print("\(column)  ")
    } // end inner loop
    
    print()
} // end outer loop

print(array2) // another way of printing

print("\nValues in array2 by row using indices:")
for row in 0 ..< array2.count {
    for column in 0 ..< array2[row].count {
        print("\(array2[row][column])  ")
    } // end inner for loop
    print()
} // end outer for loop

var array3: [[Int]] = Array(repeating: [], count: 3)
array3[0] = [1, 2, 3]
array3[1] = [4, 5]
array3[2] = [6]
print("\nValues in array3 by row")
for row in array3 {
    for column in row {
       print("\(column)  ")
    } // end inner loop
    
    print()
} // end outer loop
print("Printing array3 directly:")
print(array3)

print("\nValues in array3 by row using indices")
for row in 0 ..< array3.count {
    for column in 0 ..< array3[row].count {
        print("\(array3[row][column])  ")
    } // end inner for loop
    print()
}

// .... END OF ARRAYS .....//
