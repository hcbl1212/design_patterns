require './strategies/controller_button_strategies'
class XboxController
  include ControllerButtonStrategies::XboxControllerButtons

  def x
    self.x_button
  end 

  def y
    self.y_button
  end

end
