class River
#should have a name
#holds an array of fish
#loses fish when bears eat it
#has a fish_count method
attr_reader :name, :fishes

    def initialize(river_name)
        @name = river_name
        @fishes= []
    end

    def total_fishes
        return @fishes.count
    end
    
end
