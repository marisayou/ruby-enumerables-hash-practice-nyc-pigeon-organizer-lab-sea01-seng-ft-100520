def nyc_pigeon_organizer(data)
  new_data = {}
  
  data.each do |attribute, value|
    value.each do |attr_value, names|
      for i in 0...names.length 
        if !new_data.key?(names[i])
          new_data[names[i]] = {attribute => [attr_value]}
        elsif !new_data[names[i]].key?(attribute)
          new_data[names[i]][attribute] = [attr_value]
        else
          new_data[names[i]][attribute].push(attr_value)
        end
      end
    end
  end
  
  return new_data
end
