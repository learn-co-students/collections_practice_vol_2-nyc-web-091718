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
