class StringCalculator
  def self.add(input)
    # set default delimiter
    delimiter = ","

    numbers = input.split(delimiter).map(&:to_i)
    numbers.sum
  end
end
