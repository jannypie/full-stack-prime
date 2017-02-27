require 'test_helper'

class GeneratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

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

  test "should not save unless params are integers" do
    params = {
      :start_param => "1",
      :end_param => "apple"
    }
    generator = Generator.new(params)
    assert_not generator.save, "Created the generator with non-integers"
  end



end
