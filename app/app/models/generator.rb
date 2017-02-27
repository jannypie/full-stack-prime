class Generator < ApplicationRecord
  validates :start_param, presence: true, numericality: { only_integer: true }
  validates :end_param, presence: true, numericality: { only_integer: true }

  # pseudocode the algorithm
  # take in two integers
  # return any prime numbers in between, inclusive

  # brute force:
  # for each number n btwn both integers, do
  # test number x in range 3..n
  # divisible by x not prime, end
  # not divisible, is prime, push to list
  # test every odd number from 3 to n
  # could get to be whoa long method

  # recursive:
  # starting at x = 3, check for modulus == 0
  # if true, add number to placeholder array
  # if not, add 2 to x and recursively call the number again


  def make_range
    # generate range between numbers
    return Range.new(self.start_param,self.end_param)
  end
end
