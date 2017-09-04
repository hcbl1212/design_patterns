Dir.glob('./factories/**/**/*.rb', &method(:require))
class PlayGame
  def initialize(console_type)
    @console_to_play = Object.const_get(console_type).instance
  end

  def console
    console_to_play.console
  end

  def controller
    console_to_play.controller
  end

  private
    attr_accessor :console_to_play
end
