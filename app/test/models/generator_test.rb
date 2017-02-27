require 'test_helper'

class GeneratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without parameters" do
    generator = Generator.new
    assert_not generator.save, "Created the generator without parameters"
  end
end
