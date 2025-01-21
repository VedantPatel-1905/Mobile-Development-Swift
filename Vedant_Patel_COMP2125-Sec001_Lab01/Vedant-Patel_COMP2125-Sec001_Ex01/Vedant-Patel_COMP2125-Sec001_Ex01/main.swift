//
//  main.swift
//  Vedant-Patel_COMP2125-Sec001_Ex01
//
//  Created by Vedant Prakash Patel on 2025-01-21.
//

import Foundation

//function for swapping values
func swap<T>(num1:T,num2:T) {
    
    //declaring variable for num1
    let y = num1
    //declaring variable for num2
    let num1 = num2
    //giving the value of num1 to num2
    let num2 = y
    //printing the values after swapping
    print("Swapped Values - Num 1: \(num1), Num 2 : \(num2)")
}
//swapping the int
swap(num1: 34, num2: 67)
//swapping the float
swap(num1: 34.14, num2: 25.9)

//swapping the strings
swap(num1: "Vedant", num2: "Patel")



