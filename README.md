# Ruby NoMethodError Bug

This repository demonstrates a common error in Ruby: attempting to reassign a value to an attribute that only has a getter method defined.  The code in `bug.rb` shows how this leads to a `NoMethodError`. The solution, `bugSolution.rb`, shows the correct way to handle this scenario.

## Bug Description
The `bug.rb` file contains a class, `MyClass`, with a getter method for the `@value` instance variable.  However, there is no setter method defined. Trying to assign a new value directly to `my_object.value` results in a `NoMethodError` because the `=` method is not defined for `my_object.value`.

## Solution
The `bugSolution.rb` file demonstrates two ways to solve this problem:
1. **Using `attr_accessor`:** This generates both getter and setter methods automatically.
2. **Defining an explicit setter method:** This gives you more control if you need to add custom logic to the assignment process.

This example helps illustrate the importance of understanding attribute accessors and the difference between getter-only and read-write attributes in Ruby.