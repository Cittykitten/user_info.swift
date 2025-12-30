// This program demonstrates basic input/output in Swift
// Ask for and display user's name and age

import Foundation  // Import Foundation framework for input/output functions

// Step 1: Ask for the user's name
print("Hello! What is your name?")
// 'print()' displays text to the console

// Step 2: Read the user's input for name
// 'readLine()' waits for user input and returns it as a String
// The '?' is because readLine() might return nil (if no input)
// '!' force unwraps the optional - use cautiously in beginner code
let userName = readLine()!
// 'let' declares a constant (value cannot be changed)
// 'userName' is the variable name (camelCase naming convention)

// Step 3: Ask for the user's age
print("Nice to meet you, \(userName)! How old are you?")
// '\(userName)' is string interpolation - inserts variable into string

// Step 4: Read the user's input for age
let ageInput = readLine()!
// 'ageInput' is a String containing what the user typed

// Step 5: Convert the age from String to Integer
// Since readLine() returns a String, we need to convert it to Int
// 'Int()' tries to convert a String to an Integer
// The result is an 'optional' (might be nil if conversion fails)
let userAge = Int(ageInput)!
// '!' force unwraps the optional Int
// WARNING: This will crash if user enters non-numeric text!

// Step 6: Print a friendly message using the collected information
print("\n--- Summary ---")  // '\n' creates a new line
print("Name: \(userName)")
print("Age: \(userAge)")
print("\nHello \(userName)! It's great to meet you.")
print("Since you're \(userAge) years old, you were born around \(2025 - userAge).")

// Optional: Add some conditional logic based on age
if userAge < 13 {
    print("You're still a kid - enjoy these years!")
} else if userAge < 20 {
    print("You're a teenager - exciting times!")
} else if userAge < 65 {
    print("You're an adult in the prime of life!")
} else {
    print("You're a senior - wisdom comes with age!")
}

// Final friendly message
print("\nThanks for using this program, \(userName)! Have a wonderful day! 😊")
