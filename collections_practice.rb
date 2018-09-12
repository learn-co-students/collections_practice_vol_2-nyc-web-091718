# your code goes here
def begins_with_r(array)
  arr = []
array.each do |var|
arr << var.start_with?('r')
end
if arr.include?(false)
  false
else
  true
end
end

def contain_a(array)
  arr = []
  array.collect do |var|
    if var.include?('a') == true
      arr << var
    end
  end
    arr
end

def first_wa(array)
  arr = array.collect do |var|
    if var.to_s.include?("wa")
      return var
    end
  end
end

def remove_non_strings(array)
  array.delete_if { |e| e != e.to_s }
end

def count_elements(array)
elements = array.uniq
elements.each { |x| x[:count] = 0 }
  array.each do |ele|
    elements.each do |new_ele|
      if ele[:name] == new_ele[:name]
        new_ele[:count] += 1
      end
    end
  end
  elements
end

def merge_data(keys, data)
  keys.map do |key|
      key.merge(data[0][key[:first_name]].to_h)
    end
end

def find_cool(array)
  array.select { |val| val[:temperature] == "cool"}
end

def organize_schools(schools)
organized = {}
  schools.each do |school, location|
      location.each do |loc, val|
        if organized.has_key?(val)
          organized[val] << school
        else
          organized[val] = [school]
        end
      end
    end
    organized
end
