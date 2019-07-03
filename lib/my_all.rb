require 'pry'

def my_all?(collection)
  bool = false

  i = 0
  while i < collection.length
    bool = yield(collection[i])
    i = i + 1

  end
  return bool
end

#my_all?(collection) {|i| i < 3}
