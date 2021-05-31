require 'pry'

def my_all?(collection)
  i = 0
  new_ary = Array.new
  while i < collection.size
    new_ary << yield(collection[i])
    i+=1
  end

  if new_ary.include?(false)
    false
  else
    true
  end
end
