class Generator < ApplicationRecord
  validates :start_param, presence: true, numericality: { only_integer: true }
  validates :end_param, presence: true, numericality: { only_integer: true }

  # new pseudocode
  # rethinking my recursive method
  # needs: input, function, breakpoint, output
  # if 2..7, input 7
  # 7/7 = 1
  # breakpoint is when all numbers have been tested
  # and the only value is one that returns 1

  def primes(n)
    if n <= 1
      return []
    end
  end
  
end
