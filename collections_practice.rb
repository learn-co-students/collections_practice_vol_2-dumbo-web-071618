
def begins_with_r(array)
   array.all? {|word| word.start_with?("r")}
 end

 begins_with_r(array)

 def contain_a(array)
	array.find_all {|word| word.include?("a")}
 end

contain_a(array)

 def first_wa(array)
   array.find {|prefix| prefix.include?("wa")}
 end

 first_wa(array)

 def remove_non_strings(array)
 	array.delete_if {|string| string.class != String}
 end

 remove_non_strings(array)

def count_elements(array)
  array.count {|name| name > 0}
end

count_elements(array)
end
