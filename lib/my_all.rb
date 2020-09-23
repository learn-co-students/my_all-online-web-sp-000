def my_all?(collection)
	i = 0
	block_return_values = []

	while i < collection.size
		block_return_values.push(yield collection[i])
		i += 1
	end

	!block_return_values.include?(false)
end
