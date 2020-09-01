def nyc_pigeon_organizer(data)
  new_data = {}
  
  data.each do |attribute, value|
    value.each do |attr_value, names|
      for i in 0...names.length 
        if !new_data.include?(names[i])
        new_data[names[i]] = {}
      end
    
end
