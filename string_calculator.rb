class StringCalculator
  def self.add(input)
    # set default delimiter
    delimiter = ","

    # Check if there exists any custom delimiter in the passed param
    # and update the delimiter if required
    if input.start_with?("//")
      delimiter = input[2]
      input = input[(input.index("\n") + 1)..-1]
    end

    # Remove new line characters & replace them with the current delimiter
    input.gsub!("\n", delimiter)

    # Check if the last character is delimiter or a new line character, if yes raise error
    raise "Invalid input" if input.end_with?(delimiter) || input.end_with?("\n")

    # Split the string using delimiter and convert the relevant string(s) into integer
    numbers = input.split(delimiter).map(&:to_i)

    # Check if there are any negatives in the passed param
    negatives = numbers.select{|num| num < 0 }
    # Raise error if any negative numbers are present
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end
end
