require 'pry'

def my_all?(collection)
  i = 0
  responses =[]
  while i < collection.length
    responses << yield(collection[i])
    i += 1
  end
  
  if responses.include?(false)
    false
  else
    true
  end
end