# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 5 - Misc
![](https://img.shields.io/badge/-8th_May-orange)

### Match
Rust supports pattern matching through ```match```. We can relate match with ```switch-case``` of C language. 

```
fn main() {
    let number = 13;
    // TODO ^ Try different values for `number`

    match number {
        // Match a single value
        1 => println!("One!"),
        // Match several values
        2 | 3 | 5 | 7 | 11 => println!("This is a prime"),
        // TODO ^ Try adding 13 to the list of prime values
        // Match an inclusive range
        13..=19 => println!("A teen"),
        // Handle the rest of cases
        _ => println!("Ain't special"),
        // TODO ^ Try commenting out this catch-all arm
    }

    let boolean = true;
    // Match is an expression too
    let binary = match boolean {
        // The arms of a match must cover all the possible values
        false => 0,
        true => 1,
        // TODO ^ Try commenting out one of these arms
    };

    println!("{} -> {}", boolean, binary);
}
```
_Source:_ Rust Lang Documentation

### Error - Result Enum

**Result<T, E>** could have one of two outcomes:
- Ok(T): An element T was found
- Err(E): An error was found with element E
  
By convention, the expected outcome is **Ok** while the unexpected outcome is **Err**.
```
fn main() {
    // Example of using Result to handle division by zero error
    match divide(10.0, 2.0) {
        Ok(result) => println!("Result of division: {}", result),
        Err(err) => println!("Error: {}", err),
    }
	
	match divide(10.0, 0.0) {
        Ok(result) => println!("Result of division: {}", result),
        Err(err) => println!("Error: {}", err),
    }
}

// Function to divide two numbers
fn divide(x: f64, y: f64) -> Result<f64, &'static str> {
    if y == 0.0 {
        Err("Division by zero")
    } else {
        Ok(x / y)
    }
}
```

### Match and Error
The below example is covering, both Error handling with match in addition to reading the input from the console. 
```
use std::io;

fn main() {
    println!("Select an option:");
    println!("1. Option 1");
    println!("2. Option 2");
    println!("3. Option 3");

    let mut choice = String::new();

    io::stdin()
        .read_line(&mut choice)
        .expect("Failed to read line");

    // Parse the input to an integer
    let choice: u32 = match choice.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input. Please enter a number.");
            return;
        }
    };

    // Match the choice and print corresponding messages
    match choice {
        1 => println!("You chose Option 1"),
        2 => println!("You chose Option 2"),
        3 => println!("You chose Option 3"),
        _ => println!("Invalid choice"),
    }
}
```

## Practice
You are tasked with implementing a simple inventory management system for a store. Define a structure named Item to represent an item in the inventory. Each item should have the following attributes:

- **id:** An integer representing the unique identifier of the item.
- **name:** A string representing the name of the item.
- **quantity:** An integer representing the quantity of the item in stock.

You are required to implement the following functions:
- **create_item(id: u32, name: String, quantity: u32) -> Result<Item, String>:** A function that takes the id, name, and quantity of an item as input and returns a Result containing the created Item if successful, or an error message if the quantity is negative.
- **update_quantity(item: &mut Item, quantity: i32) -> Result<(), String>:** A function that takes a mutable reference to an Item and updates its quantity by the specified amount. If the resulting quantity is negative after the update, return an error message indicating insufficient quantity.
- **display_item(item: &Item):** A function that takes a reference to an Item and displays its details (id, name, quantity) on the console.
Use the match expression to handle the Result type and return either the result or an error message appropriately.

```
// Define the Item structure
struct Item {
    id: u32,
    name: String,
    quantity: u32,
}

// Function to create a new Item
fn create_item(id: u32, name: String, quantity: u32) -> Result<Item, String> {
    if quantity < 0 {
        return Err("Quantity cannot be negative".to_string());
    }
    Ok(Item { id, name, quantity })
}

// Function to update quantity of an existing Item
fn update_quantity(item: &mut Item, quantity: i32) -> Result<(), String> {
    if quantity < 0 {
        return Err("Insufficient quantity".to_string());
    }
    Ok(item.quantity = quantity as u32)
}

fn display_item(item: &Item) -> Result<(), String> {
    println!("Item ID: {}", item.id);
    println!("Item Name: {}", item.name);
    println!("Item Quantity: {}", item.quantity);
    Ok(())
}

fn main() {
    // Test cases
    let mut item1 = create_item(18, String::from("Banana"), 10).unwrap();
    
    match display_item(&item1) {
        Ok(()) => println!("Item details displayed successfully"),
        Err(err) => println!("Error: {}", err),
    }

    match update_quantity(&mut item1, 20) {
        Ok(()) => println!("Quantity updated successfully"),
        Err(err) => println!("Error: {}", err),
    }

    match display_item(&item1) {
        Ok(()) => println!("Item details displayed successfully"),
        Err(err) => println!("Error: {}", err),
    }
}
```
