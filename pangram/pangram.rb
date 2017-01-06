require 'set'

module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    alphabet = ('a'..'z').to_a.to_set

    phrase.length.times do |i|
      alphabet.delete phrase[i] if alphabet.include? phrase[i]
    end
    return alphabet.count == 0
  end

    def self.pangram_another?(phrase)
    unused_letters = ('a'..'z').to_a - phrase.downcase.chars.to_a
    return true if unused_letters.empty?
    return false
  end

end