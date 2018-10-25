#Write your code here
#1
def using_map(array)
  array.collect do |array|
    "I love #{array} on my pizza!"
  end
end

#2
def using_select(array)
  array.select{|i| i.is_a?(String)}
end

#3
def using_find(array)
  array.find {|i| i % 5 == 0 and i % 15 == 0 }
end

#4
def using_each(array)
  array.each do |word|
    puts "#{word}. You keep using that word. I do not think it means what you think it means."
  end
end

#5
def using_sort(array)
  array.sort
end

#6
def using_max(array)
  array.max
end

# 7
def using_include(array, element)
  array.include?(element)
end

#8
def using_all?(array)
  array.all? {|number| number.even? } 
end

#9
def using_any?(array)
  array.any? { |int| int.is_a?(Integer)}
end