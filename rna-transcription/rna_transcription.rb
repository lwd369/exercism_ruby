module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    valid_hash = {C:"G", G:"C", T:"A", A:"U"}
    result = ''
    dna.length.times do |index|
      char = dna[index]
      return '' if valid_hash[char.to_sym].nil?
      result += valid_hash[char.to_sym]
    end
    result
  end
end