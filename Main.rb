require './ComputingStatistics'

numbers = []
puts "Enter a number: "
number = gets.chomp
until number == "done" do
  numbers.push(number.to_f)
  puts "Enter a number: "
  number = gets.chomp
end

computing_statistics = ComputingStatistics.new(numbers)
puts "Numbers: #{computing_statistics.numbers}"
puts "The average is #{computing_statistics.average}."
puts "The minimum is #{computing_statistics.minimum}."
puts "The maximum is #{computing_statistics.maximum}."
puts "The standard deviation is #{computing_statistics.standard_deviation}."