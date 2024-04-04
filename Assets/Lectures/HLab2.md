# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 2 - Functional Programming: Functions in Mathematical Terms
![](https://img.shields.io/badge/-30th_Jan-orange)

### Introduction

In functional programming, functions are analogous to mathematical functions. Let's explore key concepts using mathematical notation.

#### Function Definition

In mathematics, a function \(f\) is defined as a mapping from a _set of inputs (domain)_ to a _set of outputs (codomain)_. This is expressed as:

\[ f: A &rarr; B \]

or 

\[ y = f(x) \]

Here, \(A\) is the _domain_, and \(B\) is the _codomain_. For every input \(x\) in \(A\), there exists a unique output \(y\) in \(B\).

## Pure Functions

Functional programming emphasizes pure functions, which adhere to two main principles:

1. **Referential Transparency**: A function, given the same input, always produces the same output.

    \[ f(x) = y \]

2. **No Side Effects**: A function does not modify external state or variables; its only purpose is computation.

## Higher-Order Functions

Functional programming allows the use of higher-order functions. These functions can take other functions as arguments or return functions as results. Represented as:

\[ f: (A &rarr; B) &rarr; C \]

Here, \(f\) takes a function from \(A\) to \(B\) as an argument and returns a result of type \(C\).

## Lambda Calculus

Lambda calculus is a formal system for expressing computation with functions. In functional programming, lambda functions, or anonymous functions, are often used. A lambda function is represented as:

\[ &lambda; x &rarr; x + 1 \]

This lambda function takes an argument \(x\) and returns \(x + 1\).

## Function Composition

Function composition allows combining functions to create new functions. For functions \(f: A &rarr; B\) and \(g: B &rarr; C\), their composition \(g  &#x25CB; f\) is defined as:

\[ (g &#x25CB; f)(x) = g(f(x)) \]

This enables the creation of complex functionalities by chaining simpler functions.

## Conclusion

Understanding functions in mathematical terms is fundamental to mastering functional programming. By embracing mathematical principles, functional programming languages promote code that is predictable, modular, and free from side effects.
