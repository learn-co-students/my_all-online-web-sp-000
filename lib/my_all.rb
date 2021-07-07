require 'pry'

def my_all?(collection)
  array_index = 0
  bool_values = []
  while array_index < collection.length
    bool_values << yield(collection[array_index])
    array_index += 1
  end
  if bool_values.include?(false)
    false
  else
    true
  end
end