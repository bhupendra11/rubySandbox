def caesarCiph(input_string, shift)
	
	temp = input_string.unpack('C*')
	res=""
	temp.each do |x|
		y = x+shift
		
		if x.between?(65,90)
			#big
			if y.between?(65,90)
				y =y
			else
				gap = y-90 -1
				y = 65+gap
			end



		elsif x.between?(97,122)
			#small
			if y.between?(97,122)
				y =y
			else
				gap = y-122-1
				y = 97+gap
			end
		else
			y=x
		end

		res<<y

	end
	 res
	
end				

puts caesarCiph("What a string!", 5)