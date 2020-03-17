class River
#should have a name
#holds an array of fish
#loses fish when bears eat it
#has a fish_count method
attr_reader :name, :fishes

    def initialize(river_name,fishes)
        @name = river_name
        @fishes= fishes
    end

    def total_fishes
        return @fishes.count
    end

    def remove_fish(fish)
        @fishes.delete(fish)
    end

    def add_fish(fish)
        @fishes.push(fish)
    end
end
