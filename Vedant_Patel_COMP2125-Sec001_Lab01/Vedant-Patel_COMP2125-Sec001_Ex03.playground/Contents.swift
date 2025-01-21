// Vedant Prakash Patel
// Lab 01 Exercise 03

import UIKit

let tempReadings = [
"Monday": [12,25,10], //threee values, represents morning, day time and evening
"Tuesday" : [2, 15, 9],
"Wednesday" : [11, 29, 22],
"Thursday" : [7, 11, 9],
"Friday" : [ 16, 22, 20]
];

// A) Calculating avergae temperature for each day
for key in tempReadings.keys{
    //reading the temperature from tempReadings

    let array:[Int] = tempReadings[key]!;
    var amountOfTemp:Int = 0;
    
    //for loop for counting total of temperatures from the dictionary
    for index in 0..<array.count
    {
        amountOfTemp += array[index]
    }
    //converting the average into doubles
    let averageTemp:Double = Double(amountOfTemp)/3;
    //prinitng the average temperature
    print("The average temperature for \(key) is \(averageTemp)");
}

//B) Calculating hightest Temperature for each day
for key in tempReadings.keys{
    //reading the temperature from tempReadings
    var topTemp:Int = 0;
    let array:[Int] = tempReadings[key]!;
    
    //using for loop check temperature from each day
    for index in 0..<array.count{
        if array[index] > topTemp{
            topTemp = array[index]
        }//calculating the highest temperature 
    }
    
    //printing the highest temperature
    print("The highest Temperature of \(key) is \(topTemp)");
}

//C) Calculating the average temperature for the week
var count:Double = 0;
var amountOfTemp:Int = 0;
for value in tempReadings.values{
    //reading the temperature from tempReadings
    for index in 0..<value.count{
        amountOfTemp += value[index];
        count += 1;
        //counting the days of the week
    }
}
//calculating the average of the week's temperature
let averageTemp:Double = Double(amountOfTemp) / count;

//printing the average temperature for the week
print("\nThe average temperature for the week is \(averageTemp)\n");
