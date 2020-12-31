class ComputingStatistics

  def initialize(numbers)
    @numbers = numbers
  end

  def numbers
    number_string = ""
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
      average[0...-2].to_i
    else
      average.to_f
    end
  end

  def minimum
    @numbers.min
  end

  def maximum
    @numbers.max
  end

end