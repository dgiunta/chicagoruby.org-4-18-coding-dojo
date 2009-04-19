require File.join(File.dirname(__FILE__), "../spec_helper")

module Bowling
  describe Game do
    before do
      @game = Bowling::Game.new  
    end
    
    context "when first created" do
      it "should have 0 hits" do
        @game.should have(0).hits
      end
      
      it "should hit pins" do
        @game.hit(5)
        @game.hits.should == [5]
      end
      
      it "should have a score of 0" do
        @game.score.should == 0 
      end
    end
        
    it "should have a score method" do
      @game.should respond_to(:score)
    end
    
    it "should score 0 if we've hit 0 pins on all 20 rolls" do
      (0..20).each do 
        @game.hit(0)
      end
      @game.score.should == 0
    end
    
    it "should score 20 if we've hit 1 pin on all 20 rolls" do
      20.times{ @game.hit(1) }
      @game.score.should == 20
    end
    
    it "should consider strikes" do
      ß
    end
    
  end
end