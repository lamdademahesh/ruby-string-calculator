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

    # Split the string using delimiter and convert the relevant string(s) into integer
    numbers = input.split(delimiter).map(&:to_i)
    numbers.sum
  end
end
