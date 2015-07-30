puts "Give me some numbers:"

number = gets.chomp.to_s.split(" ")

def max(array)
    temp = array[0]

	for num in array 
		if num > temp
			temp = num
		end  

	end

	puts temp.to_s + " this is the highest number"
end

def min(array)
	temp = array[0]

	for num in array
		if num < temp
			temp = num
		end
	end

	puts temp.to_s + " this is the lowest number"

end

def count(array)
	temp = 0
	for i in array
		temp = temp + 1
	end

	return temp

end

def avg(array)
	temp = 0
	for num in array
		temp = num + temp
	end

	average = temp / count(array)
	puts average.to_s + " is the average" 
end


def convert(array)
	temp = []
	for num in array
		temp.push(num.to_i)
	end
	return temp
end

def calc(number)
	array = number.to_a
	array = convert(array)
	max(array)
	min(array)
	puts "There are " + count(array).to_s + " numbers in the sequence."
	avg(array)
end



calc(number)




