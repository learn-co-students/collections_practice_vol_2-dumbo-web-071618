#require 'pry'
def begins_with_r(array)
  array.all? { |word| word[0] == 'r'} ? true : false
end

def contain_a(array)
  array.select { |word| word.include?('a')}
end

def first_wa(array)
  array.each do |word|
    return word if word[0..1] == 'wa'
  end
end

def remove_non_strings(array)
  array.select { |el| el.is_a?(String)}
end

def count_elements(array)
  uniqued = []

  array.each do |hash1|
    uniqued << hash1 unless uniqued.include?(hash1)
  end

  uniqued.map do |hash|
    hash[:count] = array.count(hash)
    hash
  end
end

def merge_data(keys, data)

  keys.each do |key|
    data[0].keys.each do |data_key|
      if data_key == key[:first_name]
        data.each do |hash|
          if hash.key?(key[:first_name])
            hash[key[:first_name]].each do |k, v|
              key[k] = v
            end
          end
        end
      end
    end
  end

end

def find_cool(cool)
  answer_hash = {}

  cool.each do |hash|
    hash.each do |name_symbol, name|
      if hash.value?("cool")
        answer_hash[name_symbol] = name
      end
    end
  end

  [answer_hash]
end

def organize_schools(schools)
  new_hash = {}

  schools.each do |school, location_hash|
    location_hash.each do |location_symbol, location_string|
      unless new_hash[location_string]
        new_hash[location_string] = []
      end

      new_hash[location_string] << school
    end
  end

  new_hash
end
