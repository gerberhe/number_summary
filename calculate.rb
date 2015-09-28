require_relative 'number_summary'

# a = (1..6).map { |i| i }
# print a, "\n"

# print NumberSummary.mode(a), "\n"
file = File.open("data.csv", 'r')

array = []

file.each_line do |line|
	array = line.split(',')
end

puts NumberSummary.summarize(array)