
module BookKeeping
  VERSION = 1
end

class Sieve
  attr_accessor :range

  def initialize(range)
    @range = range
  end

  def primes
    return [] if range < 2

    range_array = (2..range).to_a
    prime_number = 2
    index = 0

    while range > prime_number ** 2
      range_array = range_array.select { |num| (num == prime_number) || (num%prime_number != 0) }
      index += 1
      prime_number = range_array[index]
    end
    return range_array
  end
end