require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

#find fish by name
    def test_001_fish_has_name
                @fish1 = Fish.new("tuna")
        assert_equal("tuna", @fish1.name)
    end

end
