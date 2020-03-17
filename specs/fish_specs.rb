require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

    def setup
        @fish1 = Fish.new("tuna")
    end
#find fish by name
    def test_001_fish_has_name
        assert_equal("tuna", @fish1.name)
    end

end
