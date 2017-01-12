module BookKeeping
  VERSION = 2
end

class Integer

  DIGITAL_CHAR = [['I','V'],['X','L'],['C','D'],['M','W']]

  def to_roman
    number_array = self.to_a
    answer = ''
    number_array.length.times do |index|
      answer = handle_single_number(number_array[index], index) + answer
    end
    return answer
  end

  protected

  def to_a
    number_string = self.to_s.reverse
    number_array = []
    number_string.length.times do |index|
      number_array << number_string[index].to_i
    end
    return number_array
  end

  def handle_single_number(number, digital)
    return '' if digital > 3 || number == 0
    return DIGITAL_CHAR[digital][0]*number if number >=1 && number <= 3
    return self.handle_single_number(1, digital) + self.handle_single_number(5,digital) if number == 4
    return DIGITAL_CHAR[digital][1] if number == 5
    return self.handle_single_number(5,digital) + self.handle_single_number(number-5,digital) if number >=6 && number <= 8
    return self.handle_single_number(1,digital) + self.handle_single_number(1,digital+1) if number == 9
  end
end