require 'pry'

def my_all?(collection)
  return false if collection.length == 0
  i = 0
  while i < collection.length
    return false if not yield(collection[i])
    i += 1
  end
  return true
end