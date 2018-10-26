require 'spec_helper'

enumerable_array_1 = ['pepperoni', 'sausage', 'green olives', 'green peppers', 'onions', 'pineapple', 'anchovies']
enumerable_array_2 = ['This', 'is', 'true', 'love', 'you', 'think', 'this', 'happens', 'every', 'day']
enumerable_array_3 = ['I', 3, 'have', 97, 'strings', 3.14159, 'floats', 'and', 8675309, 'integers', 42, 'in', 'the', 'same', 'enumerable']
enumerable_array_4 = (1..100)
enumerable_array_5 = [86262, 58115, 22558, 97709, 66236, 28056, 25992, 81375, 11248, 56789, 42783, 27353, 70796, 63432, 53234, 63058, 27019, 72316, 8675309]


# Question 1
# Write a method that uses map or collect
describe "#using_map" do
  it "takes in argument of an Array and returns a new Array of statments with each topping surrounded by two Strings (#map)" do
    expect(using_map(enumerable_array_1)).to eq(["I love pepperoni on my pizza!",
                                                 "I love sausage on my pizza!",
                                                 "I love green olives on my pizza!",
                                                 "I love green peppers on my pizza!",
                                                 "I love onions on my pizza!",
                                                 "I love pineapple on my pizza!",
                                                 "I love anchovies on my pizza!"] )
  end
end

# Question 2
# Write a method that uses select
describe "#using_select" do
  it "takes in argument of an Array and uses #select to return the Strings" do
    expect(using_select(enumerable_array_3)).to eq([
      "I", "have", "strings", "floats", "and", "integers", "in", "the", "same", "enumerable"
    ])
  end
end

# Question 3
# Write a method that uses find
describe "#using_find" do
  it "takes in argument of an Array and uses #find to return the first number divisible by *both* 5 and 15" do
    expect(using_find(enumerable_array_4)).to eq(15)
  end
end

# Question 4
# Write a method that uses each
describe "#using_each" do
  it "takes in argument of an Array and uses #each to output a statement with an array interpolated within it" do
    expect(using_each(enumerable_array_2)).to eq(["This", "is", "true", "love", "you", "think", "this", "happens", "every", "day"])
  end
end


# Question 5
# Write a method that uses sort
describe "#using_sort" do
  it "takes in an argument of an Array and returns a copy of the Array, sorted" do
    expect(using_sort(enumerable_array_2).last).to eq("you")
    expect(using_sort(enumerable_array_2).first).to eq("This")
  end
end

# Question 6
# Write a method that uses max
describe "#using_max" do
  it "takes in argument of an Array and returns the highest numerical value (#max)" do
    expect(using_max(enumerable_array_5)).to eq(8675309)
  end
end

# Question 7
# Write a method that uses include?
describe "#using_include" do
  it "takes in arguments of (1) an Array and (2) a sought element and returns true if the array includes that element; else, false" do
    element1 = "This"
    element2 = "Tardis"
    expect(using_include(enumerable_array_2, element1)).to eq(true)
    expect(using_include(enumerable_array_2, element2)).to eq(false)
  end
end

# Question 8
# Write a method that uses all?
describe "#using_all?" do
  it "takes in argument of an Array and returns true if all of the numbers in the Array are even (#all?)" do
    expect(using_all?(enumerable_array_5)).to eq(false)
  end
end

# Question 9
# Write a method that uses any?
describe "#using_any?" do
  it "takes in argument of an Array and returns true if there are any integers in the given Array (#any?)" do
    expect(using_any?(enumerable_array_2)).to eq(false)
  end
end
