
def begins_with_r(words)
  checker = true
  words.each do |word|
    if word[0] != "r"
      checker = false
    end
  end
  checker
end

def contain_a(words)
  words_with_a = []
  words.each do |word|
    if word.include? "a"
      words_with_a << word
    end
  end
  words_with_a
end

def first_wa(words)
  words.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(arr)
  arr.delete_if{|element| !element.kind_of?(String)}
  return arr
end

def find_cool(cool_data)
  found_cool_arr = []
  array.each do |element|
    if element[:temperature] == "cool"
      found_cool_arr << element 
    end
  end
  found_cool_arr
end

def count_elements(hash_elements)
  hash_elements.each do |array_element|
    puts array_element
end

def merge_data(keys, data)
  
end

def organize_schools(schools)
end

