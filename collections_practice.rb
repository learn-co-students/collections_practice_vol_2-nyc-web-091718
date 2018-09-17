# your code goes here
def begins_with_r(tools)
  i = 0
  while i < tools.length
    if tools[i][0] != 'r'
      return FALSE
    end
    i += 1
  end
  return TRUE
end

def contain_a(words)
  arr = []
  words.collect do |word|
    if word.include? "a"
      arr.push(word)
    end
  end
  arr
end

def first_wa(words)
  words.each do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(things)
  things.delete_if{|thing| !thing.is_a? String}
end

def count_elements(elements)
  #puts "#{elements.class}: #{elements}"
  ele_count = []
  #count = 0
  elements.each do |e|
    count = 0
    elements.each do |v|
      if v == e
        count += 1
      end
    end
    ele_pre = {:count => count, :name => e[:name]}
    ele_count.push(ele_pre)
  end
  #puts "+++#{ele_count}+++"
  #thing = [{:count => 2, :name => "blake"}, {:count => 1, :name => "ashley"}]
  ele_count.uniq
end

def merge_data(data1, data2)
  #puts "===+++===\n#{data1[0].class} : #{data1[0]}"
  #puts "===+++===\n#{data2.class} : #{data2[0]["blake"]}"
  #data = {data2[0]["blake"]}
  [data1[0].merge(data2[0][data1[0][:first_name]]),data1[1].merge(data2[0][data1[1][:first_name]])]
end

def find_cool(array)
  array.select do |x|
    #puts "===+++===\nX#{x.class} : #{x}"
    x[:temperature] == "cool"
  end
end

def organize_schools(schools)
  puts "#{schools.class}: #{schools}"
  org_hash = {}
  schools.each do |x,y|
    if org_hash.has_key?(y[:location])
      org_hash[y[:location]] << x
    else
      org_hash[y[:location]] = [x]
    end
  end
  org_hash
end

