require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class RiverTest < MiniTest::Test

    def setup
        @fish1 = Fish.new("tuna")
        @fish2 = Fish.new("salmon")
        @fish3 = Fish.new("mackarel")

        @fishes = [@fish1,@fish2,@fish3]

        @the_clyde = River.new("the Clyde",@fishes)

        @bear1 = Bears.new("Freddy",:Brown,[@Fish1,@fish2])
    end

    #fish count
    def test_001_count_how_many_fish_in_river_return_3
        assert_equal(3,@the_clyde.total_fishes)
    end

    def test_002_add_fish
        @the_clyde.add_fish(@fish2)
        assert_equal(4,@the_clyde.total_fishes)
    end

    #remove fish, add to bear belly
    def test_003_bear_comes_to_eat_fish
        @the_clyde.remove_fish(@fish1)
        @bear1.eat_fish(@fish1)
        assert_equal(2,@the_clyde.total_fishes)
    end

end
