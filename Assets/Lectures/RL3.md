# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 3 - Data Types
![](https://img.shields.io/badge/-7th_May-orange)

### DataTypes
- bool : The boolean type.
- char : A character type.
- i8 : The 8-bit signed integer type.
- i16 : The 16-bit signed integer type.
- i32 : The 32-bit signed integer type.
- i64 : The 64-bit signed integer type.
- isize : The pointer-sized signed integer type.
- u8 : The 8-bit unsigned integer type.
- u16 : The 16-bit unsigned integer type.
- u32 : The 32-bit unsigned integer type.
- u64 : The 64-bit unsigned integer type.
- usize : The pointer-sized unsigned integer type.
- f32 : The 32-bit floating point type.
- f64 : The 64-bit floating point type.
- array : A fixed-size array, denoted [T; N], for the element type, T, and the non-negative compile-time constant size, N.
- slice : A dynamically-sized view into a contiguous sequence, [T].
- str : String slices.
- tuple : A finite heterogeneous sequence, (T, U, ..).

Source: [Here](https://www.codingame.com/playgrounds/365/getting-started-with-rust/primitive-data-types#:~:text=i32%20%3A%20The%2032-bit%20signed,16-bit%20unsigned%20integer%20type.)

#### Examples

##### Shadowing
```
fn main() {
    let x = 5; // Immutable variable x
    println!("Original x: {}", x);
	
	// x = 10; //uncommenting this would rsult in "error[E0384]: cannot assign twice to immutable variable `x`"

    let x = "hello"; // Shadowing x with a new value
    println!("Shadowed x: {}", x); // The type and value of x have changed, but it's still immutable

    // This line would result in a compilation error because x is immutable:
    // x = "world"; 
}
```

##### Type Conversion 
```
fn main() {
    // Attempt to assign a floating-point value to an integer variable without explicit conversion
    //let x: i32 = 5.9; // This will result in a compilation error

    // Fix: Use explicit type conversion to assign the floating-point value to the integer variable
    let y: i32 = 5.9 as i32;

    println!("Value of y: {}", y);
	
	let z: i32 = 5.9_f32.round() as i32;

    println!("Value of z: {}", z);
}
```

#### Function calls
```
// Example function that takes two integers and returns their sum
fn add(a: i32, b: i32) -> i32 {
    a + b
}

// Example function that takes a string and prints it
fn print_message(message: &str) {
    println!("Message: {}", message);
}

// Example function that takes two integers and returns their product
fn multiply(a: i32, b: i32) -> i32 {
    a * b
}

fn main() {
    // Example 1: Call the add function
    let result1 = add(20, 65);
    println!("Result of adding 20 and 65: {}", result1);

    // Example 2: Call the print_message function
    print_message("Hello, world!");

    // Example 3: Call the multiply function
    let result2 = multiply(5, 7);
    println!("Result of multiplying 5 and 7: {}", result2);
}
```
## Practice

Explain what happens here?
```
fn main() {
    let x = 5;
    let x = x * 2;
    let x = x + 10;

    println!("The value of x is: {}", x);
}
```
