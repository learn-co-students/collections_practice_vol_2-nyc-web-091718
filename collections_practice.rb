require 'pry'

def begins_with_r(array)

  array.each do |element|
    if !element.start_with?("r")
      return false
    end
  end
    true
end


def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
    new_array
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.is_a? String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, data)
  new_data = []
  keys.each do |key|
    info = data[0][key[:first_name]]
    info[:first_name] = key[:first_name]
    new_data << info
  end
  new_data
end

def find_cool(cool)
  cool_hashes = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  cool_hashes
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |name, info|
    if !new_hash.include?(info[:location])
      new_hash[info[:location]] = []
    end
    new_hash[info[:location]] << name
  end
  new_hash
end
