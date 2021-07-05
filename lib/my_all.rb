require 'pry'

def my_all?(collection)
  my_array=[]
  i = 0
  while i < collection.length
    my_array << yield(collection[i])
    i = i + 1
  end
  if my_array.include?(false)
    false
  else
    true
  end
end
