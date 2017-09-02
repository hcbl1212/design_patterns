class Playstation
  attr_accessor :console, :controller
  def initialize
    @console = PlaystationConsole.new 
    @controller = PlaystationController.new 
  end
end
