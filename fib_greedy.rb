class FibGreedy
  attr_reader :max

  def initialize(max_count)
    @max = max_count
  end

  def run
    greedycalculateFibAt(max)
  end

  def greedycalculateFibAt(n)
    first_sequence = 0
    second_sequence = 1
    current = 0
    position = 2

    while position <= n
      first_sequence = second_sequence
      second_sequence = current
      current = first_sequence + second_sequence
      position += 1
    end

    return current
  end


end