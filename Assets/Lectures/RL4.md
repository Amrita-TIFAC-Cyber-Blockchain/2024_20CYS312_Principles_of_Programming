# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 4 - Structures and Modules
![](https://img.shields.io/badge/-7th_May-orange)

### Structures
```
struct Employee {
    id: u32,
    name: String,
    department: String,
}
fn main() {
    let employee1 = Employee {
        id: 44,
        name: String::from("Ramaguru"),
        department: String::from("Cyber Security"),
    };

    let employee2 = Employee {
        id: 18,
        name: String::from("Ammu"),
        department: String::from("Maths"),
    };

    println!("Employee 1 - ID: {}, Name: {}, Department: {}", employee1.id, employee1.name, employee1.department);
    println!("Employee 2 - ID: {}, Name: {}, Department: {}", employee2.id, employee2.name, employee2.department);
}
```

```
struct Employee {
    id: u32,
    name: String,
    department: String,
}
fn main() {
    let mut employee = Employee {
        id: 44,
        name: String::from("Ramaguru"),
        department: String::from("Cyber Security"),
    };

    employee.name = String::from("Ramaguru Radhakrishnan");

    println!("Employee ID: {}, Name: {}, Department: {}", employee.id, employee.name, employee.department);
}
```

```
struct Employee {
    id: u32,
    name: String,
    department: String,
}
fn create_employee(id: u32, name: String, department: String) -> Employee {
    Employee {
        id,
        name,
        department,
    }
}

fn main() {
    let employee = create_employee(44, String::from("Ramaguru Radhakrishnan"), String::from("Cyber Security"));

    println!("Employee ID: {}, Name: {}, Department: {}", employee.id, employee.name, employee.department);
}
```
```
struct Point {
    x: i32,
    y: i32,
}

fn print_point(point: Point) {
    println!("Point coordinates: ({}, {})", point.x, point.y);
}


fn print_point1(point: &Point) {
    println!("Point coordinates: ({}, {})", point.x, point.y);
}

fn main() {
    // Create a Point instance
    let p = Point { x: 44, y: 18 };

    // Pass the Point instance by reference to the print_point function
    print_point(p);

    // We cannot use the Point instance after transferring the ownership
    //println!("Point coordinates after transfer: ({}, {})", p.x, p.y);
	
	// Create a Point instance
    let p = Point { x: 44, y: 18 };

    // Pass the Point instance by reference to the print_point function
    print_point1(&p);

    // We can still use the Point instance after borrowing it
    println!("Point coordinates after borrowing: ({}, {})", p.x, p.y);
}
```

### Modules

```
// src/main.rs

mod math; // Import the math module

fn main() {
    let result_add = math::add(5, 3);
    let result_subtract = math::subtract(10, 7);

    println!("Addition Result: {}", result_add);
    println!("Subtraction Result: {}", result_subtract);
}
```

```
// src/math.rs

pub fn add(a: i32, b: i32) -> i32 {
    a + b
}

pub fn subtract(a: i32, b: i32) -> i32 {
    a - b
}
```

