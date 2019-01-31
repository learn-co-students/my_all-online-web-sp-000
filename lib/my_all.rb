require 'pry'

def my_all?(collection)
#Starting count for while loop.
i = 0
#New array to add return elements to.
arr = []
#New loop to iterate through array elements.
while i < collection.length
  #Move return elements into new array.
  arr << yield(collection[i])
  i += 1
end
#Evaluate if arr elements are true or false && establish return values.
if arr.include?(false)
  false
else
  true
end
end
