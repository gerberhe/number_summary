# @author Harrison Gerber <gerberhe@s.dcsdk12.org>
# @author Ethan Simmons <esimm98@gmail.com>
class NumberSummary
	
	class << self

		array = []

		def max(array)
			array.max
		end

		def min(array)
			array.min
		end

		def mean(array)
			sum = 0
			mean = 0
			array.each do |i|
				sum += i.to_f
			end
			mean = sum / array.length
			return mean.round(1)
		end

		def mode(array)
	    sorted = array.sort
	    count = 0
	    maxCount = 0
	    mode = []
	    for n in 0..(sorted.length - 1)
	        if sorted[n] == sorted[n + 1]
	            count += 1
	            mode.push(sorted[n]) if count == maxCount
	            mode = [sorted[n]] if count > maxCount
	        else
	            maxCount = count if count > maxCount
	            mode.push(sorted[n]) if maxCount == 0
	            count = 0
	        end
	    end
	    return mode
		end

		def median(array)
			sorted = array.sort
			length = array.length
			median = 0

			if length%2 == 0
				first = sorted[length/2 - 1]
				second = sorted[length/2]

				median = ((first + second).to_f / 2).round(1)
			else
				median = sorted[(length-1)/2]
			end
		end

		def q1(array)
			length = array.length
			sorted = array.sort
			if length%2 == 0
				arr = sorted[0..(length/2) - 1]
				return median(arr)
			else
				arr = sorted[0..(length - 3) / 2]
				return median(arr)
			end
		end

		def q3(array)
			length = array.length
			sorted = array.sort
			if length%2 == 0
				arr = sorted[(length/2)..length - 1]
				return median(arr)
			else
				arr = sorted[((length - 1) / 2) + 1..length - 1]
				return median(arr)
			end
		end

		def sigma(array)
			mean = mean(array)
			arr = []

			array.each do |i|
				arr.push((i-mean)*(i-mean))
			end
			mean = mean(arr) * arr.length / (arr.length - 1)
			return Math.sqrt(mean).round(1)
		end
	end

	def summarize(array)
		puts "Number Summary:"
		puts "Min: #{min(array)}"
		puts "Max: #{max(array)}"
		puts "Mean: #{mean(array)}"
		puts "Median: #{median(array)}"
		puts "Q1: #{q1(array)}"
		puts "Q3: #{q3(array)}"
		puts "Mode(s): #{mode(array)}"
		puts "Sigma: #{sigma(array)}"
	end
end