module Bowling
  class Game
    def roll(pins)
      @pins << pins
    end
    
    def score
      return 0  if pins.length == 0
      total = 0
      pin_i = 0
      (1..10).each do |frame|
        if pins[pin_i] == 10# strike
          total += pins[pin_i] + pins[pin_i + 1] + pins[pin_i + 2]
          pin_i += 1
        elsif pins[pin_i] + pins[pin_i + 1] == 10# Spare
          total += pins[pin_i] + pins[pin_i + 1] + pins[pin_i + 2]
          pin_i += 2
        else# Add Frame
          total += pins[pin_i] + pins[pin_i + 1]
          pin_i += 2
        end
      end
      total
    end

    def initialize
      @pins = Array.new
    end
    
    
    attr_reader :pins
    
    
    
  end
end