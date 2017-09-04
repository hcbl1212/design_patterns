require './interfaces/abstract_factory_interface'
class Xbox < GameAbstractFactory
  def console
    XboxConsole.new
  end

  def controller
    XboxController.new
  end
end
