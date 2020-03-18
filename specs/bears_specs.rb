require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


require_relative('../bears')
require_relative('../river')
require_relative('../fish')

class BearsTest < MiniTest::Test

    def setup
        @bear1 = Bears.new("Yogi", :Grizzley, ["tuna","mackarel"])
        @fish1 = Fish.new("salmon")
        @fish2 = Fish.new("haddock")
        @fish3 = Fish.new("tuna")
        @fishes = [@fish1,@fish2,@fish3]
    end

    def test_001_bear_name
        assert_equal("Yogi",@bear1.name)
    end

    def test_002_bear_type
        assert_equal(:Grizzley,@bear1.type)
    end

    def test_003_get_bear_stomach_by_name
        assert_equal(2,@bear1.food_count)
    end

    def test_004_eat_fish
        @river = River.new("Amazon",@fishes)
        @bear1.eat_fish(@fish1)
        @river.remove_fish(@fish1)

        assert_equal(3,@bear1.food_count)
        assert_equal(2,@river.total_fishes)
    end

    def test_005_bear_talk_for_grizzley
        assert_equal("Rwar", @bear1.bear_talk)
    end

        #Given a bear takes a fish amount from river
#And puts that fish amount into his belly
end
