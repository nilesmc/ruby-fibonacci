require 'benchmark'
# require 'pry'
require_relative 'fib'
require_relative 'fib_faster'
require_relative 'fib_greedy'

class Tortoise
  attr_reader :iterations

  def initialize(count)
    @iterations = count
  end

  def race
    Benchmark.bm do |bm|
      bm.report { Fib.new(iterations).run }
      bm.report { FibFaster.new(iterations).run }
      bm.report { FibGreedy.new(iterations).run }
    end
  end

end