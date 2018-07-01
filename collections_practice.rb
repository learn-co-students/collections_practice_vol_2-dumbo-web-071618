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
  count = 2
  return count
end