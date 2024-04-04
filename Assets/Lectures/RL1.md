# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 1 - Introducton to Rust Programming
![](https://img.shields.io/badge/-1st_Apr-orange)


### Hello World Program

```
fn main() {
    println!("Hello, world!");
}
```

### Example 1 
```
use std::io;

fn main() {
    println!("Guess the number!"); // Macro call

    println!("Please input your guess.");

    let mut guess = String::new(); // Mutable Var.

    io::stdin() // instance 
        .read_line(&mut guess) // Ok / Err 
        .expect("Failed to read line");

    println!("You guessed: {guess}");
	
}
```
