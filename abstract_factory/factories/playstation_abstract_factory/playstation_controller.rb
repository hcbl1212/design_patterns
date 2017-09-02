require './strategies/controller_button_strategies'
class PlaystationController
  include ControllerButtonStrategies::PlaystationControllerButtons

  def x
    self.x_button
  end 

  def y
    self.y_button
  end

end
