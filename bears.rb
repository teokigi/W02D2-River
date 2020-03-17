class Bears
#should have a name, eg yogi type grizzly
#should have stomach status
#eats fish from river
#bears can roar
#has a food count method

attr_reader :name, :type, :stomach_status
    def initialize(bear_name,bear_type)
        @name = bear_name
        @type = bear_type
        @stomach_status = []
    end

end
