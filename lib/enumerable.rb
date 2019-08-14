#Write your code here
require 'pry'
def using_map(array)
    array.map do |topping|
        "I love #{topping} on my pizza!"
    end
end

def using_select(array)
array.select do |word|
     word.class == String
        
    
end
        

    
    
end

def using_find(array)
    array.find{|x| x%15 == 0}
end

def using_sort(array)
    array.sort
end

def using_max(array)
    array.max 
end

def using_include(array,x)
    array.include? x 
end

def using_all?(array)
    array.all? {|x| x%2 == 0}
end

def using_any?(array)
    array.any?(Integer)
end


