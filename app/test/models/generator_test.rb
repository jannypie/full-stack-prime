require 'test_helper'

class GeneratorTest < ActiveSupport::TestCase


  test "should not save without parameters" do
    generator = Generator.new
    assert_not generator.save, "Created the generator without parameters"
  end

  test "should not save without starting param integer" do
    end_param = {
      :end_param => 123
    }
    generator = Generator.new(end_param)
    assert_not generator.save, "Created the generator without start param"
  end

  test "should not save without ending param integer" do
    start_param = {
      :start_param => 123
    }
    generator = Generator.new(start_param)
    assert_not generator.save, "Created the generator without ending param"
  end

  test "should save with start and end parameters" do
    params = {
      :start_param => 1,
      :end_param => 123
    }
    generator = Generator.new(params)
    assert generator.save, "Created the generator without params"
  end

  test "should not save unless params are/can be integers" do
    params = {
      :start_param => "1",
      :end_param => "twelve"
    }
    generator = Generator.new(params)
    assert_not generator.save, "Created the generator with non-integers"

    assert_equal 1, generator.start_param
    assert_not_equal 12, generator.end_param
  end

  # test: only accept numbers >=1

  params = {
    :start_param => 1,
    :end_param => 10
  }

  test "make_range method should have access to param values" do
    generator = Generator.new(params)
    assert_equal Range.new(1,10), generator.make_range
  end

  test "primes method returns empty if sent 1" do
    generator = Generator.new(params)
    assert_nil generator.primes(1)
  end

  test "primes method returns 2 if sent 2" do
    generator = Generator.new(params)
    assert_equal 2, generator.primes(2)
  end

  test "primes method returns empty if sent non-prime numbers" do
    generator = Generator.new(params)
    assert_nil generator.primes(4)
    assert_nil generator.primes(12)
    assert_nil generator.primes(100)
  end

  test "init method sets list variable" do
    generator = Generator.new(params)
    generator.init
    assert_equal [], generator.list
  end

  test "init method sets range variable" do
    generator = Generator.new(params)
    generator.init
    assert_equal (1..10), generator.range
  end

  test "start_priming method begins primes" do
    tiny_params = {
      :start_param => 1,
      :end_param => 2
    }
    generator = Generator.new(tiny_params)
    generator.init
    generator.start_priming
    assert_equal [2], generator.list
  end

  test "generator does not stack overflow" do
    generator = Generator.new(params)
    generator.init
    generator.start_priming
    assert_equal [2,3,5,7], generator.list
  end

  test "generator finds primes in arbitrary range" do
    mega_params = {
      :start_param => 7900,
      :end_param => 7920
    }
    generator = Generator.new(mega_params)
    generator.init
    generator.start_priming
    assert_equal [7901,7907,7919], generator.list
  end

end
