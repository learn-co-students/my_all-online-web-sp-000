require 'pry'

def my_all?(collection)
  all_true = true

  i = 0
  while i < collection.length
    if yield(collection[i]) == false
      all_true = false
    end
    i += 1
  end

  all_true
end
