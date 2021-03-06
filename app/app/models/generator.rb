class Generator < ApplicationRecord
  validates :start_param, presence: true, numericality: { only_integer: true }
  validates :end_param, presence: true, numericality: { only_integer: true }

  attr_reader :list, :range

  # new pseudocode
  # rethinking my method
  # needs: input, function, break condition, output
  # if 2..7, input 7
  # 7/7 = 1
  # break condition is when all numbers have been tested
  # and the only value is one that returns 1

  def init
    @list = []
    @range = make_range
  end

  def make_range
     Range.new(self.start_param,self.end_param)
  end

  def start_priming
    @list = @range.map do |num|
      primes(num)
    end
    @list = @list.compact
    print_results
  end

  def primes(num)

    # break condition
    if num <= 1
      return
    end

    (2..num).each do |x|
      # if its evenly divisible and not the same as itself
      if num % x == 0 && num != x
        # num is not a prime
        return
      # but if we've gotten here and it IS itself
      elsif num % x == 0 && num == x
        # that means it's prime: break condition
        return x
      # otherwise, there was a remainder and it's not prime
      else
        next
      end
    end

  end

  def print_results
    p "Prime numbers between #{self.start_param} and #{self.end_param}"
    @list.each_with_index do |line,i|
      puts "#{i + 1}. #{line.to_s}"
    end
  end


end
