require 'pry'
def begins_with_r(array)
  array.length == array.select {|elem| elem[0] == "r"}.length
end

def contain_a(array)
  array.select {|elem| elem.include? "a"}
end

def first_wa(array)
  array.find {|elem| elem[0,2] == "wa"}
end

def remove_non_strings(array)
  array.select {|elem| elem.instance_of? String}
end

def count_elements(array)
  results = []
  array_without_duplicates = array.uniq

  array_without_duplicates.each do |unique_elem|
    count = 0
    array.each do |elem|
      if unique_elem == elem
        count += 1
      end
    end
    results << {unique_elem.keys[0] => unique_elem.values[0], :count => count}
  end
  results
end

def merge_data(keys, data)
  results = []
  keys.each do |datum|
    object = {}
    datum.each do |key,value|
      object[key] = value
      data[0][value].each do |k, v|
        object[k] = v
      end
    end
    results << object
  end
  results
end

def find_cool(cool)
  results = []
  cool.each do |element|
    if element[:temperature] == "cool"
      results << element
    end
  end
  results
end

def organize_schools(schools)
  results = {}
  nyc_array = []
  sf_array = []
  chicago_array = []
  schools.each do |key, value|
    if value == {:location => "NYC"}
      nyc_array << key
    elsif value == {:location => "SF"}
      sf_array << key
    else
      chicago_array << key
    end
  end
  results["NYC"] = nyc_array
  results["SF"] = sf_array
  results["Chicago"] = chicago_array
  results
end
