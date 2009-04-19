module Bowling
  class Game
    def hit(pins)
      hits << pins
    end
    
    def hits
      @hits ||= []
    end
    
    def score
      hits.inject(0){ |sum, hit| sum += hit }
    end
  end
end