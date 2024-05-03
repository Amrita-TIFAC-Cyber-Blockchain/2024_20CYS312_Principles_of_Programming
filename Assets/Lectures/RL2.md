# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 2 - Introducton to Rust Programming
![](https://img.shields.io/badge/-4th_May-orange)

### Datatypes
```
fn main() {
    // Integer types
    let integer_num: i32 = 42;
    
    // Floating-point types
    let float_num: f64 = 3.14;
    
    // Boolean type
    let is_true: bool = true;
    
    // Character type
    let char_value: char = 'a';
    
    // String type
    let string_value: String = String::from("Hello, Rust!");

    println!("Integer: {}", integer_num);
    println!("Float: {}", float_num);
    println!("Boolean: {}", is_true);
    println!("Character: {}", char_value);
    println!("String: {}", string_value);
}
```

### Identifier

```
// Normal identifiers
const FOO: i32 = 42;
static IDENTIFIER: &str = "Hello";
static MOSCOW: &str = "Москва";
static TOKYO: &str = "東京";

println!("foo: {}", FOO);
println!("_identifier: {}", IDENTIFIER);
println!("Москва: {}", MOSCOW);
println!("東京: {}", TOKYO);

// Raw Identifiers
const MATCH: i32 = 42;
const ELSE: i32 = 24;

println!("r#match: {}", MATCH);
println!("r#else: {}", ELSE);
```

### Operators
```
fn main() {
    let a = 10;
    let b = 20;
    
    // Arithmetic operators
    let sum = a + b;
    let difference = a - b;
    let product = a * b;
    let quotient = a / b;
    let remainder = a % b;

    // Comparison operators
    let is_equal = a == b;
    let greater_than = a > b;
    let less_than_or_equal = a <= b;

    // Logical operators
    let logical_and = is_equal && greater_than;
    let logical_or = is_equal || greater_than;
    let logical_not = !is_equal;

    println!("Sum: {}", sum);
    println!("Difference: {}", difference);
    println!("Product: {}", product);
    println!("Quotient: {}", quotient);
    println!("Remainder: {}", remainder);
    println!("Is Equal: {}", is_equal);
    println!("Greater Than: {}", greater_than);
    println!("Less Than or Equal: {}", less_than_or_equal);
    println!("Logical AND: {}", logical_and);
    println!("Logical OR: {}", logical_or);
    println!("Logical NOT: {}", logical_not);
}
```
