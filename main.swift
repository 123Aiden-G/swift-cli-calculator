import Foundation

// A simple CLI calculator
print("Welcome to Swift CLI Calculator!")
print("Enter first number: ", terminator: "")
let input1 = readLine() ?? "0"

print("Enter second number: ", terminator: "")
let input2 = readLine() ?? "0"

print("Choose operation (+, -, *, /): ", terminator: "")
let operation = readLine() ?? "+"

// Convert inputs to numbers
if let num1 = Double(input1), let num2 = Double(input2) {
    var result: Double = 0
    
    switch operation {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        if num2 != 0 {
            result = num1 / num2
        } else {
            print("Error: Division by zero!")
            exit(1)
        }
    default:
        print("Invalid operation.")
        exit(1)
    }
    
    print("Result: \(result)")
} else {
    print("Invalid number input.")
    exit(1)
}
