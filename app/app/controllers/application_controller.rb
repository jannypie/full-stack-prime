class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  attr_reader :start
  def start
    appStart = Interface.new
    appStart.show_commands
    appStart.get_params
  end
end

(ApplicationController.new).start
