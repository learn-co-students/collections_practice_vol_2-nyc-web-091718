require "pry"

def begins_with_r(array)
  value = true
  array.each do |element|
    if element[0] != "r"
      value = false
    end
  end
  return value
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
    new_array << element
    end
  end
  return new_array
end

def first_wa(array)
  element_with_wa = nil
  array.each do |element|
    if element.match(/wa/)
      element_with_wa = element
      break
    end
  end
  return element_with_wa
end

def remove_non_strings(array)
  string_array = []
  array.each do |element|
    if element.is_a?(String)
      string_array << element
    end
  end
  return string_array
end

def count_elements(array)
    array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |hash_two|
      if hash_two[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        array << merged_person
      end
    end
  end
  return array
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end
  return new_array
end

def organize_schools(schools)
  organized_hash = {}
  schools.each do |name, location|
    city = location[:location]
    if organized_hash[city]
      organized_hash[city] << name
      #binding.pry
    else
      organized_hash[city] = []
      organized_hash[city] << name
    end
  end
  return organized_hash
end

