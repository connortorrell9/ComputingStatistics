class ComputingStatistics

  def initialize(numbers)
    @numbers = numbers
  end

  def clean_number_end(number)
    if number.to_s.end_with?(".0")
      number.to_s[0...-2].to_i
    else
      number
    end
  end

  def numbers
    number_string = ""
    @numbers.each do |number|
      number_string += "#{clean_number_end(number)}, "
    end
    number_string[0...-2]
  end

  def average
    total = 0
    @numbers.each do |number|
      total += number
    end
    average = total.to_f / @numbers.length
    clean_number_end(average)
  end

  def minimum
    clean_number_end(@numbers.min)
  end

  def maximum
    clean_number_end(@numbers.max)
  end

  def standard_deviation
    average_number = average
    @numbers.map! do |number|
      (number - average_number) ** 2
    end
    clean_number_end(Math.sqrt(average))
  end

end