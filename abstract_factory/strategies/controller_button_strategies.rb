module ControllerButtonStrategies
  #Each game needs to be able to have the character move forward and jump.
  #However, each controller has a different button (algorithm) that defines
  #how to make the player move forward and jump.  
  module XboxControllerButtons
    def move_forward
      puts 'Press Xbox Left Stick Up Button'
    end

    def jump
      puts 'Press Xbox X Button'
    end
  end

  module PlaystationControllerButtons
    def move_forward
      puts 'Press Playstation Up L3 button'
    end

    def jump
      puts 'Press Playstation X Button'
    end
  end

  module WiiControllerButtons
    def move_forward
      puts 'Press Up Arrow on Wii D-Pad.'
    end

    def jump
      puts 'Press Wii B button.'
    end
  end
end
