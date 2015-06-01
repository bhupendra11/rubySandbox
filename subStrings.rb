def substrings (inp_string , inp_array)

	inp_string = inp_string.downcase

	res = {}

		inp_array.each do |element|

			if inp_string.include?(element)
				if res.has_key?(element)

					puts "inside"
					res[element]+=1
				else 
					res[element] =1
				end
			end

		end

			return res




end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "it" ]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)