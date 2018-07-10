def count_elements array 

  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end 
        
  end.uniq

end