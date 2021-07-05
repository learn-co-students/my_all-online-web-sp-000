require 'pry'

# my original solution (works but not as abstract so less modular, not better because shorter)
def my_all_orig?(collection)
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


# school solution - more abstract so modular
#      i.e. this could easily be changed to mimic the .none method by simply
#      changing the .include conditional to look for true instead of false
#           example: if block_return_values.include?(true)
# my solution would require changing multiple conditions/values and the variable name for clairity
def my_all?(collection)
  block_return_values = []

  i = 0
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
