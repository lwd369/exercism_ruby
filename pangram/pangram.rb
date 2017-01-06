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
end