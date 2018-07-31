require "pry"

def begins_with_r(tools)
  tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(array)
  array.select {|string| string.include?("a")}
end

def first_wa(array)
  array.find {|string| string.is_a?(String) && string.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|element| element.is_a?(String)}
end

def count_elements(array)
  uniq_array = array.uniq
  new_array = []
  uniq_array.each do |element|
    count = array.count(element)
    new_array << element.merge({:count => count}) 
  end
  new_array
end

def merge_data(keys,data)
  stats_array = []
  keys.each do |hash|
    hash.each do |key,value|
      data.each do |data_hash|
        data_hash.each do |name, stats|
          if name == value
            stats_array << stats.merge({key => value})
          end
        end
      end
    end
  end
  return stats_array
end

def find_cool(cool)
  cool.select  {|hash| hash.has_value?("cool")}
end
      
def organize_schools(schools)
  #binding.pry
  organized_schools = {}
  schools.each do |school,location_hash|
    location_hash.each do |location_symbol, location|
      if organized_schools[location]
        organized_schools[location] << school
      else 
        organized_schools[location] = [school]
      end
    end
  end
  return organized_schools
end