require 'pry'

def my_all?(collection)
   i = 0 
   values = [ ]
  while i < collection.length 
    values << yield(collection[i])
    i +=1
  end
  if values.include?(false) 
    false 
  else 
    true 
  end 
end

my_all?([1, 2, 3,]) do |num|
  num < 2
end