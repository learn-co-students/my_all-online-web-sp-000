require 'pry'

def my_all?(collection)
  binding.pry
  i = 0 # set counter to 0

  block_return_values = [] #array containing values from loop

  while i < collection.length #while i is less than collection length
    block_return_values << yield(collection[i]) #add curent value to block_return_values
    i = i + 1 #increase i by 1
  end #end of while loop

  if block_return_values.include?(false) #if block_return_values includes a false value
    false #return false
  else #else
    true #return true
  end #end of if statement
end #end of my_all? method
