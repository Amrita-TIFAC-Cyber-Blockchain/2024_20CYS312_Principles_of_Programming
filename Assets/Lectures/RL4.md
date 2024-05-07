# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 4 - Structures and Modules
![](https://img.shields.io/badge/-7th_May-orange)

### Structures
```
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
