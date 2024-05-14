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
  end
end