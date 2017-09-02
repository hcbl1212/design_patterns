class Xbox
  attr_accessor :console, :controller
  def initialize
    @console = XboxConsole.new
    @controller= XboxController.new
  end
end
