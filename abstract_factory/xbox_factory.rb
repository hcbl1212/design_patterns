require './xbox_console'
require './xbox_controller'
class XboxFactory
  attr_accessor :console, :controller
  def initialze
    @console = XboxConsole.new
    @controller= XboxController.new
  end
end
