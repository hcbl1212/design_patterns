require './interfaces/abstract_factory_interface'
class Playstation < GameAbstractFactory
  def console
    PlaystationConsole.new 
  end

  def controller
    PlaystationController.new 
  end
end
