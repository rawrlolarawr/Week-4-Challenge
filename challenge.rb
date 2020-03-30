#TOPIC: Arrays / Loops

def equals_index?(array)
    counter = 0
    returned = false
    while counter < array.length do
        if counter == array[counter]
            returned = true
        end
        counter += 1
    end
    returned
end

def create_array(number, string)
    counter = 0
    array = []
    while counter < number do
        array << "I am #{string}"
        counter += 1
    end
    array
end

def reverse_array(array)
    counter = 0
    i = -1
    new_array = []
    while counter < (array.length) do
        new_array << array[i]
        counter += 1
        i -= 1
    end
    new_array
end

def index_included(array, element)
    returned = -1
    for counter in 0..array.length
        if array[counter] == element
            returned = counter
        end
    end
    returned
end

def replace_last_element(array, element)
    array.pop
    array << element
end

#TOPIC Arrays / Hashes

def array_info_hash(array)
    hash = {}
    hash[:first] = array[0]
    hash[:last] = array[-1]
    hash[:length] = array.length
    hash[:maximum_value] = array.sort[-1]
    hash
end

def unique_hash_from_array(array)
    hash = {}
    array.uniq.each{|value| hash[value] = array.count(value)}
    hash
end

#TOPIC MAP / COLLECT / EACH

def strings_to_int(array)
    array.collect {|string| string.to_i}
end

def round_nums(array)
    array.collect {|n| n.round}
end

def light_switch(array)
    light = 0
    array.each do |i|
        if i.even?
            light += 1
        end
    end
    light.even? ? "off" : "on"
end

#Refactor Array / Loops Challenges

def equals_index?(array)
    returned = false
    array.each.with_index{|i| returned = true if array[i] == i}
    returned
end

def create_array(number, string)
    Array.new(10, "I am #{string}") #This is legitimatley just the normal constructor
end

def reverse_array(array)
    array.each_index.collect {|i| array[-1-i]}
end

def index_included(array, element)
    returned = -1
    array.each_with_index {|e, i| returned = i if e == element}
    returned
end

# Try this: https://www.codewars.com/kata/printer-errors/train/ruby

def printer_error(s)
	new_s = s.split("")
    new_a = new_s.select{|s| s > "m"}
    "#{new_a.length}/#{new_s.length}"
end

def closest_two(n)
    new_n = n ** 2
    highest = 2 ** Math.log2(new_n).ceil
    lowest = 2 ** Math.log2(new_n).floor

    high_check = highest - new_n
    low_check = lowest - new_n

    high_check > low_check ? highest : lowest
end

def first_eight(array)
    array.find {|i| closest_two(i) == 8}      
end

# Advanced Challenges

def mean_median_mode(array)
    mmm_hash = {}

    mmm_hash[:mean] = array.sum(0.0) / array.size

    array.length % 2 ? mmm_hash[:median] = array.sort[array.length / 2] : mmm_hash[:median] = 0.5 * (array.sort[array.length / 2 - 1] + array.sort[array.length / 2])
    
    mode = {}
    array.uniq.each {|e| mode[e] = array.count(e)}
    mmm_hash[:mode] = mode.max_by{|k,v| v}[0]

    mmm_hash
end

def one_to_one_map?(string_one, string_two)
    string_one.split("").uniq.length == string_two.split("").uniq.length
end

# Very Advanced

def square_intersect(square_hash_one, square_hash_two)
    #I don't even know where to start with this one so I'll come back to it
end