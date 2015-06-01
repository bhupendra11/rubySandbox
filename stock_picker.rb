def stock inp_array

	length = inp_array.size
	last = inp_array[length-1]

	max =0

	inp_array.each do |price|

		#maximize diff
		index_of_price = inp_array.index(price)
		puts "buy = #{price}"

		inp_array.drop(index_of_price).each do |y|
			puts "sell = #{y}"

			diff = y - price

			if(diff > max)
				max = diff
				puts "max = #{max}"
			end
		end
	end
	return max
end

puts stock ([17,6,9,15,8,6,1,10,3])



