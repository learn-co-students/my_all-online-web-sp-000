require 'pry'

def my_all?(collection)
count = 0

array = []
  while count < collection.length
   array << yield(collection[count])
  count += 1

  end
  if array.include?(false)
    false
  else 
    true
  end
end