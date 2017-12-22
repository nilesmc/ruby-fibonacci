class Fib
  # attr_accessor :fib_count
  attr_reader :max

  def initialize(max_count)
    # @fib_count = 0
    @max = max_count
  end

  def run
    i = 0
    while i <= max do
      calculateFibAt(i)
      i += 1
    end

    # puts "The total number of times the calculateFibAt method was used was #{fib_count}."
  end

  private

  def calculateFibAt(n)
    # self.fib_count += 1
    if n < 2
      n
    else
      calculateFibAt(n-2) + calculateFibAt(n-1)
    end
  end

end