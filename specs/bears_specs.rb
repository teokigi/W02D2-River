require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../bears')
require_relative('../fish')

class BearsTest < MiniTest::Test

    def setup

    end

end
