require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class RiverTest < MiniTest::Test

    def setup
        @fish1 = Fish.new "tuna"
        @fish2 = Fish.new"salmmon"
        @fish3 = Fish.new"mackarel"

        @fishes = [@fish1,@fish2,@fish3]

        @the_clyde = River.new("the Clyde",fishes)

        @bear1 = Bears.new("Freddy",:Brown,[@Fish1,@fish2])
    end

    #fish count
    def test_001_

    #remove fish, add to bear belly

end
