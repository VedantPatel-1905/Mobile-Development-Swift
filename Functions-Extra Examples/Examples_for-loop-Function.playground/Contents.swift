// Example: Compound interest calculations with the for...in statement

import Foundation

// format a String right aligned in a field
func rightAlignedString(_ inputString: String, _ fieldWidth: Int) -> String
{
    let spaces: Int = fieldWidth - inputString.count
    //let padding = String(count: spaces, repeatedValue: Character(" "))
   let padding = "*"
    return padding + inputString
} // end function

// create and configure an NSNumberFormatter for currency values
var formatter = NumberFormatter()
formatter.numberStyle = NumberFormatter.Style.currency

var amount = 1000.0 // initial amount before interest
let rate = 0.05 // interest rate

// display headers
//print(String(format:"%@%@", "Year", rightAlignedString("Amount on deposit", 20)))

// calculate amount on deposit for each of ten years
for year in 1...5 {
    // calculate new amount for specified year
    amount *= (1.0 + rate)
    
    // display the year and the amount
   // print(String(format:"%4d%@", year, rightAlignedString(formatter.string(from: NSNumber(value: amount))!, 20)))
    print(String(format:"%6d  %@", year, formatter.string(from: NSNumber(value: amount))!))
}

