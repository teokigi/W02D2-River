class Bears
#should have a name, eg yogi type grizzly
#should have stomach status


attr_reader :name, :type, :stomach_status
    def initialize(bear_name,bear_type,in_belly)
        @name = bear_name
        @type = bear_type
        @stomach_status = in_belly
    end

    def find_bear_type_by_name(bear_name)
        if @name == bear_name
            return @type
        end
    end
    #eats fish from river
    def eat_fish(fish_name)
        @stomach_status.push(fish_name)
    end
    #has a food count method
    def food_count
        return @stomach_status.length
    end

    def what_bear_ate(bear_name)
        if @name == bear_name
            return @bear1.stomach_Status
        end
    end
    #bears can roar
    def bear_talk
        if @type == :Grizzley
            return "Rwar"
        elsif @type == :GiantPanda
            return "Mwa"
        elsif @type == :Brown
            return "mwaaaooor"
        end
    end



end
