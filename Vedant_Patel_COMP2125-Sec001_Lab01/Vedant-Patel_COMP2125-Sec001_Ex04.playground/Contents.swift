import UIKit
//a) function to increase the value of each element by 10
func ModifyArray(_ arr:inout [Double])
{
    //for loop for increasing the value by 10
    for i in 0..<arr.count
    {
        arr[i] = arr[i] + 10.00;
    }
}

//b) function to modify the value of number
func ModifyArrayElement(_ item: inout Double )
{
    item = 30.0
}

//Function implementation
//declaring the values given in the question which are in float
var stockValues:[Double] =  [30.50, 10.25, 60.75, 100.25, 45.45, 89.60, 20.50, 55.55, 90.0, 70.0]

//printing the array after modification
print("Original array:- \n\(stockValues)")

// First function output
ModifyArray(&stockValues)
//priniting the array after adding 10 to each element
print("Array after modifying all the values of array:- \n\(stockValues)")

//printing the array after modification
print("Array before modifying an element of the array:- \n\(stockValues)")

//Second function output
ModifyArrayElement(&stockValues[2])

//printing the array after modification
print("Array after modifying an element of the array:- \n\(stockValues)")
