class ComputingStatistics

  def initialize(numbers)
    @numbers = numbers
  end

  def numbers
    number_string = "Numbers: "
    @numbers.each do |number|
      number_string += "#{number}, "
    end
    number_string[0...-2]
  end

  def average
    total = 0
    @numbers.each do |number|
      total += number
    end
    average = total.to_f / @numbers.length
    average = average.to_s
    if average.end_with?(".0")
      "The average is #{average[0...-2]}"
    else
      "The average is #{average}"
    end
  end

end