# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 1 - Introducton to Rust Programming
![](https://img.shields.io/badge/-1st_Apr-orange)

**Rust is:**
- fast and memory-efficient
- no runtime or garbage collector
- rich type system
- ownership model guarantee
- system programming language
- immutability and higher-order functions

### Hello World Program

```
fn main() { // 'main' function is the entry point to the program

    println!("Hello, world!"); // Macro call to println. ! denotes a macro

}
```
```fn``` keyword denotes a function, and the ```println!``` macro prints the message to standard output. 
Statements in Rust are separated by semicolons.

#### Compile 
```
rustc <<filename>>.rs
```

### Mutable Variables

```
// guessingNumber.rs

use std::io; // use io module from standard library

fn main() { // 'main' function is the entry point to the program

    println!("Guess the number!"); // Macro call to println

    println!("Please input your guess."); // Macro call to println

    let mut guess = String::new(); // Mutable Variable.

    io::stdin() // returns the instance of 'std::io::Stdin'
        .read_line(&mut guess) // read the input from the console and append it to guess - Ok / Err 
        .expect("Failed to read line"); // terminates the program on any error

    println!("You guessed: {guess}"); // Macro call to println
	
}
```

To Compile and Run:
```
> rustc guessingNumber.rs
> guessingNumber.exe
```
