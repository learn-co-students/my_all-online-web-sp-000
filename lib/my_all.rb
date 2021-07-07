require 'pry'

def my_all?(array)
  new = []
  array.each { |val|
    new << yield(val)
  }
  !new.include?(false) ? true : false
end
