class ComputingStatistics
  def numbers(numbers)
    number_string = "Numbers: "
    numbers.each do |number|
      number_string += "#{number}, "
    end
    number_string[0...-2]
  end
end