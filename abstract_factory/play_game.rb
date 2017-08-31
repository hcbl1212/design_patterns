require './playstation_factory'
require './xbox_factory'
class PlayGame
  attr_accessor :console_to_play
  def initialize(strategy_name)
    @console_to_play = Object.const_get(strategy_name).send(:new)
    @console_to_play
  end
end
