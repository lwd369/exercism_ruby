module BookKeeping
  VERSION = 3
end

class Squares
  attr_accessor :target_num
  def initialize(number)
    @target_num = number
  end

  def square_of_sum
    (0..target_num).reduce(:+) ** 2
  end

  def sum_of_squares
    (0..target_num).reduce{ |sum, n| sum + n**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end

end