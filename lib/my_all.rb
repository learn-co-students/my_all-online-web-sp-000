require 'pry'

def my_all?(collection)
  counter = 0
  all_true = true
  while counter < collection.length
    current_true = yield collection[counter]
    if !current_true
      all_true = false
      break
    end
    counter += 1
  end
  all_true
end

puts my_all?([1,2,3]) {|i| i < 4}
