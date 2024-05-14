require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "Basic Functionality  with input" do
      it "should return 0 with empty string" do
        expect(StringCalculator.add("")).to eq(0)
      end

      it "should return itself if its only single number" do
        expect(StringCalculator.add("1")).to eq(1)
      end

      it "should return sum of numbers for comma separated numbers" do
        expect(StringCalculator.add("1,3,4")).to eq(8)
      end
    end

    context "Custom delimiters" do
      it "should support custom delimiter" do
        expect(StringCalculator.add("//;\n2;4;6")).to eq(12)
      end
    end

    context "Supporting new line character" do
      it "should allow new lines between numbers" do
        expect(StringCalculator.add("1\n2,4")).to eq(7)
      end

      it "should disallow new line as last character and raise error" do
        expect{ StringCalculator.add("1, \n") }.to raise_error(RuntimeError, "Invalid input")
      end
    end

    context "Negative numbers in the param" do
      it "should raise error if negative numbers passed" do
        expect{ StringCalculator.add("1, -3, 4") }.to raise_error(RuntimeError, "Negative numbers not allowed: -3")
      end
    end
  end
end