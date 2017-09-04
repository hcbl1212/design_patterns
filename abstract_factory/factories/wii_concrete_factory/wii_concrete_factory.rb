require './interfaces/abstract_factory_interface'
class Wii < GameAbstractFactory
  def console
    WiiConsole.new 
  end

  def controller
    WiiController.new 
  end
end
