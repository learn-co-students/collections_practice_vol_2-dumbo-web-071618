require 'pry'

# your code goes here

def begins_with_r(array)
  i = 0 
  new_array = []
  
  while i < array.length 
    if yield(array[i])
      new_array << array[i]
    end
    i += 1 
  end
  new_array
end

def begins_with_r(array)
  array.all?{|word| word[0] == "r"}
end

def contain_a(array) 
  array.select{|word| word.include?("a") == true}
end

def first_wa(array)
  array.find{|word| word.to_s.include?("wa") == true}
end

def remove_non_strings(array)
  array.delete_if{|word| word.class != String}
end


def count_elements(array)
  key_array = []
  array.each do |hash|
    key_array.concat(hash.values) 
  end
 
  array.each do |hash|
    if key_array.include?(hash[:name])
      hash[:count] = key_array.count(hash[:name])
    end
  end
    array.uniq
end


def merge_data(keys, data)
  
  keys.each do |hash|
    
    if data[0].keys.include?(hash[:first_name])
      # binding.pry
      hash[:awesomeness] = data[0][hash[:first_name]][:awesomeness]
      hash[:height] = data[0][hash[:first_name]][:height]
      hash[:last_name] = data[0][hash[:first_name]][:last_name]
    end
  end
  keys
end

def find_cool(cool)
  result = []
  
  cool.each do |hash|
    hash.each do |key, val|
      if key == "cool"|| val == "cool"
        result << hash
      end
    end
  end
  result
end

def organize_schools(schools)
  result = {}
  
  schools.each do |school, data|
    if result.keys.include?(data[:location])
      result[data[:location]] << school
    else
      result[data[:location]] = [school]
    end
  end
  result
end