require 'pry'

def my_all?(collection)
  i = 0
  collect_values = []
  while i < collection.length
    collect_values << yield(collection[i])
    i += 1

end

  if collect_values.include?(false)
    false
  else
    true
  end
end
