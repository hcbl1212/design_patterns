Dir.glob('./factories/**/**/*.rb', &method(:require))
class PlayGame
  attr_accessor :console_to_play
  def initialize(console_type)
    @console_to_play = Object.const_get(console_type).send(:new)
    @console_to_play
  end
end
