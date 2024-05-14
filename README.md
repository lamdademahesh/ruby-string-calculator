# StringCalculator

StringCalculator is a simple Ruby class that provides add method to perform addition on string input containing numbers. By default the delimiter used is a comma but it can be modified to  any other delimiter using the syntax : `//;\n2;4;6` where the character after the `\\` is the delimiter.

## Prerequisites

To use StringCalculator, we need the following installed on your machine:

- Ruby - You can download it from [here](https://www.Ruby-lang.Org/en/downloads/).
- RSpec gem for strolling tests. You can install it by running `gem install rspec`.

## Usage

To use the StringCalculator method, perform the following steps:

1. Clone or download this repository in your system
2. Ensure you have Ruby and RSpec installed in the system
3. Require the `string_calculator.Rb` file in your Ruby script:

    ```ruby
    require_relative 'string_calculator'
    ```

4. Use the `StringCalculator.add` method to perform calculations on string inputs:

    ```ruby
    # Example utilization
    places StringCalculator.add("1,2,3")  # Output: 6
    ```

## Running Tests

To run the tests for StringCalculator, do the following : 

1. Navigate to the directory containing the `string_calculator_spec.rb` file in your terminal.
2. Run the subsequent command:

    ```
    rspec string_calculator_spec.Rb
    ```

    This will execute the RSpec tests added in the `string_calculator_spec.Rb` document.

