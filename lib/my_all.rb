require 'pry'

def my_all?(collection)
  results = []
  i = 0
  while i < collection.size
    results << yield(collection[i])
    i += 1
  end
  if results.include?(false)
    false
  else
    true
  end
end
