require 'pry'

def my_all?(collection)
 i = 0
 returnvalues = []
 while i < collection.length
  returnvalues << yield(collection[i])
   i += 1
 end
if returnvalues.include?(false)
  return false
else
  true
end
end

print(my_all?([1,2,3]) {|i| i < 2})
