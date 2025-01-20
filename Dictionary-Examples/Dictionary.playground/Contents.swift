// Dictionary Examples

import UIKit

// Dictionary stores the values in the form of key and value pair - --<key, value>
// key must be unique
//

//... Example 01.... Various ways of Dictionay declaration and initialization

var dict1: Dictionary<String, Double> = [:] // type of the key is String, type of the value - Double
// Empty Dictionay
var dict2 = Dictionary<Double, Double>() // type of the key is Double, type of the value - Double
var dict3 = Dictionary<String, Double>() // type of the key is String, type of the value - Double
var dict4: [Int:String] = [:] // another syntax, type of the key is Int, type of the value - String
var dict5 = [Int:Int]() // another way, type of the key is Int, type of the value - Int
var dict6: [String:String] = [:] // type of the key is String, type of the value - String
var dict7: [Int:String] = [101:"Java", 102:"CSharp", 103:"Swift"]
var dict8 = [101:"Java", 102:"CSharp", 103:"Swift"]
var dict9 = [101:45.67, 102:67.89, 103:34.90] // key is integer and value is Double
var dict10 = ["Mobile":"Java", "Web":"HTML"] // key is String, value is String

//... Example 02.... Creating a dictionary:

var movieRatings:[String:Int] = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4] // key is of type String, and value is of type Int

var movieRatings2:[String:Int] = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4] // key is of type String, and value is of type Int
var movieRatings3:[Int:Double] = [101: 4.5, 102:5.5, 103:6.6] // key is of type int, and value is of type Double

var momovieRatings4 = ["Donnie Darko", "Chungking Express", "Dark City"]


//You created a mutable dictionary using the Dictionary literal syntax

var empDict = [Int: String]() // Empty dictionary
var courseDict:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"] // key is Int, value is String
var courseName = courseDict[101]  // Java will be assigned to a variable courseName. You  can use subscript to get the value of a key
print(courseName) // value in the dictionary is stored as optional
print(courseName!)

// ... Example 03... Using count property to count number of elements in the dictionary
var filmRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(filmRatings.count) movies.") // count is property and it gives number of elements in the dictionary

// ... Example 04... Reading a value from the dictionary

var cineRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(cineRatings.count) movies.")
let darkoRating = cineRatings["Donnie Darko"] // returns 4
print(darkoRating!) // ! is used to unwrap the value of a variable. The value returned is optional

// ... Example 05... Modifying a value:

var coursesDict:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"]
print(courseDict[102]!)

coursesDict[102] = "CSharp"  // value will be updated
print(coursesDict[102])
print(coursesDict[102]!) // ! is used to unwrap the value of a variable


// ... Example 06...Updating a value:
//Example - (a)

var coursesDict2:[Int:String] = [101:"Java", 102:"PHP", 103:"Swift"]
var oldVal = coursesDict2.updateValue("Android", forKey: 101)
print( "Old value of key = 101 is \(oldVal)" )         // print old value - Java

print( "Value of key = 101 is \(coursesDict2[101])" )      // print new value - Android
oldVal = coursesDict2.updateValue("Python", forKey: 102)
print( "Old value of key = 101 is \(oldVal)" )         // print old value - Java
print( "Value of key = 102 is \(coursesDict2[102]!)" )

//Example - (b)

var pictureRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(pictureRatings.count) movies.")
let darkoMovieRating = pictureRatings["Donnie Darko"]
pictureRatings["Dark City"] = 5

let oldRating: Int? = pictureRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = pictureRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

// ... Example 07...Adding and Removing Values:

var movieRating = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
movieRating["The Cabinet of Dr. Caligari"] = 5 // a new key-value pair is added
print("I have rated \(movieRating.count) movies.")

movieRating.removeValue(forKey: "Dark City") // the entry for key "Dark City" is removed
movieRating["Dark City"] = nil  // setting to nil

// ... Example 08..Looping through dictionary:

var movieRatings5 = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings5.count) movies.")
let darkoRating5 = movieRatings5["Donnie Darko"]
print(darkoRating5) // value is an optional
print(darkoRating5!)
movieRatings5["Dark City"] = 5

let oldRating5: Int? = movieRatings5.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating {
    print(lastRating)
} // oldRating5 name is user-defined
movieRatings5["The Cabinet of Dr. Caligari"] = 5
movieRatings5["Dark City"] = nil

for (key, value) in movieRatings5 {
    print("The movie \(key) is rated \(value).")
}

//... Example 09..Looping through Dictionay using keys and values

var productRatings = ["Apple": 9, "Samsung": 7, "Sony": 5, "Sharp":4]

for key in productRatings.keys
{
    print("Product Keys: \(key).")
}

for val in productRatings.values
{
    print("Product Values: \(val).")
}

//... Example 10..Sending Dictionary's keys and values to an Array

let keysMovies = Array(movieRatings.keys) // keysMovies is an array which stores the keys of the movieRatings
print(keysMovies.description)

let valuesMovies = Array(movieRatings.values) // valuesMovies is an array which stores the values of the movieRatings
print(valuesMovies.description)

//... Example 11..Creating an immutable dictionary by using let constant

let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]

//...... Example 12 ....More examples
//Declaring and printing mutable and immutable Dictionary objects.

// declare immutable Dictionary with traditional generic type syntax
// and a Dictionary literal with one key-value pair
let countryCodes1: Dictionary<String, String> = ["Argentina" : "ar"]

// declare mutable Dictionary with shorthand type syntax
// and a Dictionary literal with multiple key-value pairs
var countryCodes2: [String : String] = ["Finland" : "fi", "South Africa" : "za", "Nepal" : "np"]

// declare mutable Dictionary with type inference and a Dictionary literal
var countryCodes3 = ["Argentina" : "ar"] // prefer this approach

// print with Dictionary description property (from Printable protocol)
// Printable protocol's description property returns String
// invoke description property explicitly
print("PRINT DICTIONARIES USING THE DESCRIPTION PROPERTY EXPLICITLY")
print("countryCodes1: \(countryCodes1.description)")
print("countryCodes2: \(countryCodes2.description)")
print("countryCodes3: \(countryCodes3.description)")

print()

// invoke description property implicitly
print( "PRINT DICTIONARIES USING THE DESCRIPTION PROPERTY IMPLICITLY")
print("countryCodes1: \(countryCodes1)")
print("countryCodes2: \(countryCodes2)")
print("countryCodes3: \(countryCodes3)")

//... Example 13: Declaring and printing empty Dictionary objects.

// declare a mutable empty Dictionary with initializer syntax
var cityCodes1 = [String : String]()
// declare a mutable empty Dictionary with an empty dictionary literal
var cityCodes2: [String : String] = [:]
// declare empty Dictionary with a minimiumCapacity
var cityCodes3 = [String : String] (minimumCapacity: 10) // no literal

// following is an invalid declaration because type inference fails
// var countryCodes4 = [:]  // cannot infer type of Dictionary
// print each of the empty Dictionary objects
print("PRINT EMPTY DICTIONARY OBJECTS")
print("cityCodes1 is \(cityCodes1)")
print("cityCodes2 is \(cityCodes2)")
print("cityCodes3 is \(cityCodes3)")

//...Example 14: Dictionary with common metric weight abbreviations
let metricWeightAbbreviations = ["mg" : "milligram",
    "g" : "gram",  "kg" : "kilogram", "mt" : "metric ton"]

func printDictionary<K, V>(dictionary: [K : V]) {
    for (key, value) in dictionary {
        print("\(key):  \(value)")
    }
}

// call the generic printDictionary function
print("PRINT METRIC WEIGHT ABBREVIATIONS WITH")
print("GENERIC printDictionary FUNCTION")
printDictionary(dictionary: metricWeightAbbreviations) // function call

//...Example 15: Dictionary equality operators == and !=
let countryCapitals1 =
    ["Belgium" : "Brussels", "Haiti" : "Port-au-Prince"]
print("\ncountryCapitals1: \(countryCapitals1)")
printDictionary(dictionary: countryCapitals1) // function call

// different Dictionary from countryCapitals1
let countryCapitals2 = ["Nepal" : "Kathmandu", "Uruguay" : "Montevideo"]
print("countryCapitals2: \(countryCapitals2)")

// same contents as Dictionary countryContents1 but a different object
let countryCapitals3 =
    ["Belgium" : "Brussels", "Haiti" : "Port-au-Prince"]
print("countryCapitals3: \(countryCapitals3)")
    
// use equality == operator for comparing the dictionaries
if countryCapitals1 == countryCapitals3 {
    print("countryCapitals1 has the same contents as countryCapitals3")
}

// use != operator -- NOT EQUAL TO
if countryCapitals1 != countryCapitals2 {
    print("countryCapitals1 does not have the same contents ")
    print("as countryCapitals2")
}

//... Example 16: Dictionary properties count and isEmpty
var countryCodes = ["Argentina" : "ar", "Jamaica" : "jm"]

// Use count property to determine number of key-value pairs in Dictionary
print("\ncountryCodes CONTAINS \(countryCodes.count) KEY-VALUE PAIRS")

// Use method isEmpty to determine if a contryCodes is empty
if countryCodes.isEmpty {
    print("\nDictionary countryCodes IS EMPTY")
} else {
    print("\nDictionary countryCodes IS NOT EMPTY")
}

// empty the Dictionary using empty Dictionary literal. Deletes all the elements
countryCodes = [:]

// Use method isEmpty to determine if a contryCodes1 is empty
print("\nAFTER ASSIGNING [:] TO countryCodes")
if countryCodes.isEmpty {
    print("Dictionary countryCodes IS EMPTY")
} else {
    print("Dictionary countryCodes IS NOT EMPTY")
}

//...Example 17: Dictionary example: Instructor's gradebook
// Key as string and value as an array
let gradeBook = [
    "Susan" : [92, 85, 100], // name : Array of grades
    "Eduardo" : [83, 95, 79],
    "Hugo" : [91, 89, 82],
    "Ryan" : [97, 91, 92]
]
var allGradesTotal = 0.0
var allGradesCount = 0
var total:Double
// uses reduce and a closure
for (student, grades) in gradeBook {
    total = 0.0
    for num in grades
    {
        total += Double(num)
    } // end inner for
    print("AVERAGE GRADE FOR \(student): " +
        String(format: "%.2f", total / Double(grades.count)))
    allGradesTotal += Double(total)
    allGradesCount += grades.count
} // end outer for

// String formatting
print("AVERAGE GRADE FOR ALL STUDENTS: " +
    String(format: "%.2f", allGradesTotal / Double(allGradesCount)))

//...Example 18: Dictionary keys and values properties.

let winterMonths = [12 : "December", 1 : "January", 2 : "February", 3 : "March"]

// print the winterMonths Dictionary
print("winterMonths DICTIONARY IS")
print(winterMonths)
    
// print winterMonth's keys
print("\nwinterMonths KEYS ARE:")
for key in winterMonths.keys {
    print(key)
}

// print winterMonths values
print("\nwinterMonths VALUES ARE:")
for value in winterMonths.values {
    print(value)
}

// use for...in to iterate through the iterable keys collection
print("\nfor...in ITERATING THROUGH keys COLLECTION")
    
for monthNumber in winterMonths.keys {
    print("winterMonths[\(monthNumber)] \(winterMonths[monthNumber]!)")
}

print()
// convert iterable keys collection to an Array and process it
print("ARRAY OF winterMonths.keys")
let winterMonthsNumbersArray = [Int](winterMonths.keys)
for monthNumber in winterMonthsNumbersArray {
    print("\(monthNumber)  ")
}
print()
    
// convert iterable values collection to an Array and process it
print("ARRAY OF winterMonths.values")
let winterMonthsNamesArray = [String](winterMonths.values)
for monthName in winterMonthsNamesArray {
    print("\(monthName)  ")
}

//...Example 19: Dictionary methods updateValue, removeValueForKey, removeAll

// Start with empty Dictionary
var countriesCodes : [String : String] = [:]

// method updateValue
// add a new key-value pair with method updateValue
// handle optional return of previous value (of type String?)
if let previous = countriesCodes.updateValue("za", forKey: "South Africa") {
    print("PREVIOUS VALUE FOR KEY \"South Africa\" WAS \(previous)")
} else {
    print("KEY \"South Africa\" IS NEW")
}
print("countriesCodes: \(countriesCodes)\n")

// add a second key-value pair
// "ar" is incorrect for "Australia" should be "au" -- we'll fix below
// handle optional return of previous value (of type String?)
if let previous = countriesCodes.updateValue("ar", forKey: "Australia") {
    print("PREVIOUS VALUE FOR KEY \"Australia\" WAS \(previous)")
} else {
    print("KEY \"Australia\" IS NEW")
}

print("countriesCodes: \(countriesCodes)\n")

// update existing value (correct Australia's code from "ar" to "au"
// handle optional return of previous value (of type String?)
print("CORRECTED \"Australia\" COUNTRY CODE FROM \"ar\" TO \"au\"")
if let previous = countriesCodes.updateValue("au", forKey: "Australia") {
    print("PREVIOUS VALUE FOR KEY \"Australia\" WAS \"\(previous)\"")
} else {
    print("KEY \"Australia\" IS NEW")
}

print("countriesCodes: \(countriesCodes)\n")

// method removeValueForKey
// remove existing key-value pair
// handle optional return (of type String?)
if let previous = countriesCodes.removeValue(forKey:"South Africa") {
    print("KEY-VALUE PAIR \"South Africa\": ")
    print("\"\(previous)\" WAS REMOVED")
} else {
    print("KEY \"South Africa\" WAS NOT IN DICTIONARY")
}

print("countriesCodes: \(countriesCodes)\n")

// attempt to remove non-existing value
// handle nil return, removeValue returns an String? (String optional)
if let previous = countriesCodes.removeValue(forKey:"Paraguay") {
    print("KEY-VALUE PAIR \"Paraguay\": \"\(previous)\" WAS REMOVED")
} else {
    print("KEY \"Paraguay\" IS NOT IN DICTIONARY")
}

print("countriesCodes: \(countriesCodes)\n")

// method removaAll
countriesCodes.removeAll(keepingCapacity: true)
if countriesCodes.isEmpty {
    print("DICTIONARY countryCodes IS EMPTY")
}

print("countriesCodes: \(countriesCodes)\n")

//... Example 20: Tokenizing a string and producing word counts
import Foundation

//let sentence = "this is a sample sentence with several words " +
//"this is another sample sentence with some different words"

let sentence = "This this is is a a a demo demo of of of of dictionary"

// tokenize the sentence string
//let words = sentence.componentsSeparatedByString(" ")
let words = sentence.split(separator: " ")
// summarize word counts
var wordCounts: [String : Int] = [:] // empty Dictionary

// summarize occurrences of each word
for word in words {
    // if word in Dictionary, increment count; otherwise, add it
    if let count = wordCounts[String(word)] {
        wordCounts[String(word)] = count + 1 // increment count
    } else {
        wordCounts[String(word)] = 1 // add word to Dictionary
    }
}
print(wordCounts)
// display the wordCounts contents
print("\nNUMBER OF KEYS IN WORDCOUNTS DICTIONARY: \(wordCounts.count)")

