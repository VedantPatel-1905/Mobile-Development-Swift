import Cocoa

//... Example: Overloaded function definitions ...//
/*
- In overloaded functions, name of the function is same.
- But the number of parameters,or types of parameters or order/sequence of parameters are different.
 */
// square function with Int argument
// valid Overloaded functions

func myFunc(x:Int) { }
func myFunc(x:Int, y:Int) { }
func myFunc(x:Int, y:Int, z:Int) { }
func myFunc(x:Int, y:Int, z:Double) { } // myFunc(7,6,1.5)
func myFunc(x:Double, y:Int, z:Int) { } // myFunc(2.7, 7, 9)
func myFunc(x:Double, y:Int, z:String) { }
func myFunc(x:String, y:String, z:Double) { }

func square(value: Int) -> Int
{
    print("Called square with Int argument: \(value)")
    return value * value
}
// Overloaded defintion
// square function with Double argument
func square(value: Double) -> Double
{
    print("Called square with Double argument: \(value)")
    return value * value
}

// test overloaded square functions
print("Square of Int 7 is \(square(value:7))\n")
print("Square of Double 7.5 is \(square(value:7.5))")

// TODO: Try here..
// Min of two values
// Min of three values
// Min of 4 values
func minimum(_ num1: Int, _ num2: Int) -> Int {
    // add the code to find smallest of two numbers ..
    return 0;
}

func minimum(_ num1: Double, _ num2: Double) -> Double {
    // add the code to find smallest of two numbers ..
    return 0;
}

func minimum(_ num1: Float, _ num2: Float) -> Float {
    // add the code to find smallest of two numbers ..
    return 0;
}


func minimum( num1: Int, num2: Int, num3:Int) -> Int {
    // add the code to find smallest of three numbers ..
    return 0;
}

func minimum( num1: Int, num2: Int, num3:Int, num4: Int) -> Int {
    // add the code to find smallest of four numbers ..
    return 0;
}


// Call these overloaded functions
print(minimum(10, 20))
print(minimum(num1: 30, num2: 25, num3: 48))
print(minimum(num1: 101, num2: 55, num3: 60, num4: 90))
