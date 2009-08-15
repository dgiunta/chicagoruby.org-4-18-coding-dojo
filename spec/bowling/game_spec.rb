require File.join(File.dirname(__FILE__), "../spec_helper")

module Bowling
  describe Game do
    
    before(:each) do
      @game = Game.new
    end
    
    it "should have a roll method" do
      @game.should respond_to(:roll).with(1)
    end
    
    context "score" do
      it "should exist" do
        @game.should respond_to(:score)
      end
      
      it "should return 0 for new game" do
        @game.score.should == 0
      end
      
      # it "should return the score" do
      #   
      #   @game.score.should == 
      # end
      
    end
    
    context "pins" do
      it "should be entered" do
        roll_game('5,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0')
        @game.score.should == 5
      end
      
      it "should be added" do
        roll_game('5,4, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0')
        @game.score.should == 9
      end
      
      it "should handle spares" do
        roll_game('3,7, 4,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0')
        @game.score.should == 18  
      end
      
      it "should handle strikes" do
        roll_game('10, 1,1, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0')
        @game.score.should == 14
      end
      
    end
    
    def roll_game(pins)
      pins.split(/, ?/).each do |pin|
        @game.roll(pin.to_i)
      end
    end
  end  
end
