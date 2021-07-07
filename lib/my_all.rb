

def my_all?(collection)
   i=0
   block_values=[]
   while i < collection.length
     block_values << yield(collection[i])
     i = i + 1
   end
   if block_values.include?(false)
     false
   else
     true
  end
end
