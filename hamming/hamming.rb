module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length
    distance = 0
    strand_a.length.times do |i|
      distance += 1 if strand_a[i] != strand_b[i]
    end
    distance
  end
end