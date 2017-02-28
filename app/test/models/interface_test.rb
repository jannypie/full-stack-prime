require 'test_helper'

class InterfaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  interface = Interface.new

  test "init sets instructions and commands" do
    interface.init
    refute_empty(interface.instructions)
    refute_empty(interface.commands)
  end

  

end
