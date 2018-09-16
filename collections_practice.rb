require "pry"

def begins_with_r(tools)
  tools.all? { |word| word.start_with?("r") }
end

def contain_a(elements)
  elements.select { |word| word.include?("a")  }
end

def first_wa(elements)
  new_array = []
  elements.each do |word|
    new_array << word.to_s
    end
  new_array.find { |word| word.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |word| !(word.is_a? String)  }
end

def count_elements(collection)
  collection.each do |name_hash|
    name_hash[:count] = 0
    collection.each do |hash|
      if hash[:name] == name_hash[:name]
        name_hash[:count] += 1
      end
    end
  end
  return collection & collection
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
  array
end

def find_cool(array)
array.select {|element| element[:temperature] == "cool"}
end

def organize_schools(schools)
  new_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if new_schools[location]
        new_schools[location] << name
    else
      new_schools[location] = []
      new_schools[location] << name
    end
  end
  new_schools
end
