//
//  main.swift
//  Vedant-Patel_COMP2125-Sec001_Ex02
//
//  Created by Vedant Prakash Patel on 2025-01-21.
//

import Foundation

func SumAvgArray(values:[Int]) -> (Int,Double) {
//declaring variable
    var sum = 0;
    //running for loop for j values
    for j in values {
        sum+=j
    }
   //finding average by the formula
    let average = Double(sum)/Double(values.count);
    //returning the sum and average
    return (sum, average)
    
}
//calling the function and storing the tuple in variable
var output = SumAvgArray(values: [20,14,52,3,18,62]);

//printing the output
print("The sum of numbers is \(output.0)");
print("Average of numbers is \(output.1)\n");

