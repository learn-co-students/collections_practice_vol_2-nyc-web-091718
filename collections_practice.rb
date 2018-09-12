require "pry"

def begins_with_r(tools_array)
  tools_array.each do |word|
    if word.downcase[0] != "r"
      return false
   end
  end
  true 
end

def contain_a(elements)
  elements.select do |element| 
    element.include?('a')
  end 
end

def first_wa(things)
  things.each do |word|
    if word.downcase[0..1] == "wa"
      return word
   end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.to_s == element
      new_array.push(element)
    end
  end
  new_array
end
  
def count_elements(nested_names)
  counted_name = []
  all_names = []
  nested_names.each do |content|      
    content.each do |key, name|
      all_names << content[:name]
    end
  end   
    nested_names.each do |content|
      content[:count] = all_names.count(content[:name])
  end
  return nested_names.uniq
end 


keys = [
        { :first_name => "blake"}, 
        {:first_name => "ashley"} ]
data = [
        { "blake" => { 
                        :awesomeness => 10, 
                        :height => "74", 
                        :last_name => "johnson"},
          "ashley" => { 
                        :awesomeness => 9, 
                        :height => 60, 
                        :last_name => "dubs"}
          
        } ]
          
# expected: [
  #{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson"}, 
  #{:awesomeness=>9, :first_name=>"ashley", :height=>60, :last_name=>"dubs"}]

def merge_data(keys, data) 
  merge_array = []
  data[0].each do |key, value|
    value[:first_name] = key
    merge_array << value
  end
  merge_array
end


def find_cool(array)
  array.select do |item| 
    item.has_value?('cool')
  end
end


schools = {
              "flatiron school bk" => {:location => "NYC"},
              "flatiron school" => {:location => "NYC"},
              "dev boot camp" => {:location => "SF"},
              "dev boot camp chicago" => {:location => "Chicago"},
              "general assembly" => {:location => "NYC"},
              "Hack Reactor" => {:location => "SF"}
              }
 

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |key, value|
    x = value[:location]    
    schools_by_location[x] ||= [] 
    puts key 
    schools_by_location[x] << key 
  end  
  schools_by_location
end 


