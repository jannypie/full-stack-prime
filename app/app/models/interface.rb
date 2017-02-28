class Interface < ApplicationRecord

  attr_reader :instructions, :commands
  def init
    @instructions = 'Welcome to Prime Finder'
    @commands = {
      'COMMAND' => 'RESULT',
      'prime(start,end)' => 'finds prime numbers between start and end values'
    }
  end

  def show_commands
    puts @instructions
    @commands.each{|command,result| puts command.ljust(20) + "| " + result }
  end

  def control_flow
    args = ARGV[0]

    p args
    #
    #
    # case command
    # when "search"
    #   view.print_task_list(list.task_list)
    # when "exit"
    #   task_string = ARGV[1..-1].join(" ")
    #   list.add_task_to_list(task_string)
    #   write_changes
    # else
    #   view.show_commands
    # end

  end

  # def print_results_list(list)
  #   list.each_with_index do |line,i|
  #     puts "#{i + 1}. #{line.to_s}"
  #   end
  # end

end

appStart = Interface.new
appStart.init.show_commands
