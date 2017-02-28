class Interface < ApplicationRecord

  attr_reader :instructions

  def initialize
    @instructions = '
    ---
    Welcome to Prime Finder
    ---'
  end

  def show_commands
    puts @instructions
  end

  def get_params
    puts "Find prime numbers: prime(start_number,end_number)
    Example: prime(100,200)"
    option = gets
    params = option[/\(.*?\)/].tr('()', '').split(",")
    prime(params[0],params[1])
  end

  def prime(start_param,end_param)
    params = {
      :start_param => start_param,
      :end_param => end_param
    }
    generator = Generator.new(params)
    generator.init
    generator.start_priming
  end

end
