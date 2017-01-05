module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    string = ""
    string += "Pling" if number % 3 == 0
    string += "Plang" if number % 5 == 0
    string += "Plong" if number % 7 == 0
    if string.length == 0
      number.to_s
    else
      string
    end
  end
end