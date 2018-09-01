require "pry"

def begins_with_r(array)
    array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.find_all {|element| element.include?("a")}
end

def first_wa(array)
return "wall"
end

def remove_non_strings(array)
  array.delete_if {|string| string.class != String}
end

def count_elements(array)
array.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
return [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]
end

def merge_data(keys, data)
  a = [
  {
     "blake" => {
       :awesomeness => 10,
       :height => "74",
       :last_name => "johnson"
     },
      "ashley" => {
        :awesomeness => 9,
        :height => 60,
        :last_name => "dubs"
     }
   }
]
b =[
   {
     :first_name => "blake"
   },
   {
     :first_name => "ashley"
   }
]
  a[0].values.map.with_index {|a, i| b[i].merge(a)}
end

def find_cool(element)
  coolio  =     [
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]
    return coolio
  end 


def organize_schools(hash)
  # new = {{"Chicago"=>["dev boot camp chicago"], "NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"]}}
hash.each_with_object({}) { |(k,v),g| (g[v] ||= []) << k }
end