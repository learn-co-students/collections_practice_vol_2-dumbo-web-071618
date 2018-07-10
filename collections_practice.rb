require "pry"

def begins_with_r array 
  array.each do |tool|
    
    if tool.start_with?("r") == false 
      return false 
    end
  end
  true 
end

def contain_a array
  array_with_As = []
  
  array.each do |element|
    if element.include?("a") == true 
      array_with_As << element
    end
  end
  array_with_As
end

def first_wa array 
  array.each do |element|
    if element.to_s.include?("wa") == true
      return element
    end
  end
end

def remove_non_strings array
  array.delete_if {|element| element.instance_of?(String) == false}
end

def count_elements array
  counting_arr = []

  array.each do |x|
    counter = 0
    inner_hash = {}
    array.each { |y| counter += 1 if x == y }
    
    x.each do |key,value|
      inner_hash[key] = value 
      inner_hash[:count] = counter
    end
    counting_arr << inner_hash
  end
  counting_arr.uniq
end

def merge_data keys,data 
  merged_data = [] 
  
  keys.each do |person|
    new_hash = {}
    person.each do |symbol,name|
      new_hash[symbol] = name
    end
    merged_data << new_hash
  end
  
  for i in 0..merged_data.length - 1 do 
    data.each do |person|
      person.each do |name,attributes|
        if name == merged_data[i][:first_name]  
          attributes.each do |category,info|
            merged_data[i][category] = info 
          end
        end
      end
    end
  end
  merged_data
end

def find_cool people
  cool_people = []
  
  people.each do |person|
    person.each do |category,info|
      cool_people << person if category == :temperature && info == "cool"
    end
  end
  cool_people
end

def organize_schools schools 
  organized_data = {}
  school_hash = {}
  
  schools.each do |name,info|
    info.each do |property,city|
      organized_data[city] = [] if organized_data[city] == nil 
    end
  end
  
  organized_data.each do |city, institutions|
    schools.each do |name,info|
      info.each do |property,location|
        organized_data[city] << name if city == location
      end
    end
  end
  
end