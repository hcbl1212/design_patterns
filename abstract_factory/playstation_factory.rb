require './playstation_console'
require './playstation_controller'
class PlaystationFactory
  attr_accessor :console, :controller
  def initialize
    @console = PlaystationConsole.new 
    @controller = PlaystationController.new 
  end
end
