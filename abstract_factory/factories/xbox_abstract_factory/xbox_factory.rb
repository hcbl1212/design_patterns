require './interfaces/abstract_factory'
class Xbox < GameAbstractFactory
  def initialize
    @console = XboxConsole.new
    @controller= XboxController.new
  end
end
