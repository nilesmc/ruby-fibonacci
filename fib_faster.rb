class FibFaster
  attr_reader :max

  def initialize(max_count)
    @max = max_count
  end

  def run
    fastercalculateFibAt(max)
  end

  def fastercalculateFibAt(n)
    sequence = [0, 1]
    position = 2

    while position <= n do
      sequence.push(sequence[position -2] + sequence[position -1] )
      position += 1
    end

    return sequence
  end

end