require 'pry'

def begins_with_r (argument)
count = 0
argument.each do |single_word|
    if single_word[0,1] == "r"
      count += 1
      end
    end
   count == argument.length
 end

def contain_a (argument)
  a_array = []
  argument.each do |single_word|
    if single_word.include? ("a")
      a_array << single_word
    end
  end
  a_array
end

def first_wa(argument)
wa_array = []
  argument.each do |single_word|
    if single_word[0..1] == "wa"
      wa_array << single_word
    end
  end
wa_array.first
end

def remove_non_strings(argument)
    argument.delete_if { |x| x.instance_of?(String) == false }
  end

  def count_elements(argument)
    final_array = []
    count_hash = Hash.new(0)
    argument.each do |individual_hash|
        individual_hash.each do |label, person_name|
      if individual_hash[:name].include?(person_name)
        count_hash[person_name] += 1
      end
    end
  end
      count_hash.each do |name, count|
        final_array << {name: name, count: count}
  end
  return final_array
end

def merge_data(keys, data)
  final_array = []

  keys.each do |keys_array|
    keys_array.each do |label, keys_name|
      data.each do |data_array|
	     data_array.each do |data_name, data_hash|
		    data_hash.each do |attribute, number|
        end
          if keys_name == data_name
            data_hash[label] = keys_name
            final_array << data_hash
          end
        end
      end
    end
  end
  return final_array
end

def find_cool(argument)
  final_array = []
  argument.each do |full_argument_hash|
      if (full_argument_hash.values).include? ("cool")
        final_array << full_argument_hash
    end
  end
  final_array
end

def organize_schools(argument)
  location_array = []
  school_array = []
  new_hash = {}

  argument.each do |school_array|
    school_array.each do |school_array_element|
    if school_array_element.instance_of?(Hash)
      school_array_element.each do |label, location_of_school|
          location_array << location_of_school
        end
      end
    end
  end

    locations = location_array.uniq
    locations.each do |specific_location|
      argument.each do |school_array|
        school_array.each do |school_array_element|
          if school_array_element.instance_of?(Hash)
            school_array_element.each do |label, location_of_school|
              if location_of_school == specific_location
                new_hash[location_of_school] ||= []
                new_hash[location_of_school] << school_array[0
            ]
              end
            end
          end
        end
      end
    end
    new_hash
end
