def bubble_sort arr

len = arr.size

while true
	noSwaps =0
	for i in (0..len-1)
		if(i!=len-1 && arr[i]>arr[i+1] )
			noSwaps +=1
			arr[i] , arr[i+1] = arr[i+1] , arr[i]
			
		end
	end

	if noSwaps==0
		break
	end

end


return arr

end



puts bubble_sort [4,3,78,2,0,2]