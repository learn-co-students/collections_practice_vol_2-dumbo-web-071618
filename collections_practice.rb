# your code goes here
def begins_with_r(tools)
  result = false
  arr = []
  arr = tools.collect{|x| x[0]}
  arr.uniq.length == 1 ? result = true : result = false
  return result
end

def contain_a(elements)
  arr = []
  arr = elements.keep_if{|x| x if x.include?("a")}
  return arr
end

def first_wa(elements)
  arr = []
  arr = elements.keep_if{|x| x[0..1] == "wa"}
  return arr[0]
end

def remove_non_strings(elements)
  arr = []
  arr = elements.keep_if{|x| x.class == String}
  return arr
end

def count_elements(elements)
arr = []
elements = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
arr = elements.uniq
elements.each do |name_hash|
  name_hash[:count] = 0
  arr.each do |x|
    if x[:name] == name_hash[:name]
      x[:count] += 1
    end
  end
end
return arr
end

def merge_data(keys, data)
  
end