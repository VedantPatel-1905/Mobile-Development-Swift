// Example: Creating two-dimensional Arrays

// display two-dimensional Arrays of Ints by row
func outputArray(values: [[Int]]) { // Array<Array<Int>>
    for row in values {
        for column in row {
           print("\(column)  ")
        }
        
        print()
    }
}

// display two-dimensional Arrays of Ints by row using indices
func outputArrayWithIndices(values: [[Int]]) { // Array<Array<Int>>
    for row in 0 ..< values.count {
        for column in 0 ..< values[row].count {
            print("\(values[row][column])  ")
        }
        
        print()
    }
}

let array1 = [[1, 2, 3], [4, 5, 6]]
print("Values in array1 by row")
outputArray(values: array1)
print("\nValues in array1 by row using indices")
outputArrayWithIndices(values: array1)

let array2 = [[1, 2], [3], [4, 5, 6]]
print("\nValues in array2 by row")
outputArray(values: array2)
print("\nValues in array2 by row using indices")
outputArrayWithIndices(values: array2)

var array3: [[Int]] = Array(repeating: [], count: 3)
array3[0] = [1, 2, 3]
array3[1] = [4, 5]
array3[2] = [6]
print("\nValues in array3 by row")
outputArray(values: array3)
print("\nValues in array3 by row using indices")
outputArrayWithIndices(values: array3)

