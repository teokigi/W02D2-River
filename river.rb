class River
#should have a name
#holds an array of fish
#loses fish when bears eat it
#has a fish_count method
attr_reader :name, :home_to

    def initialize(river_name)
        @name = river_name
        @home_to = []
    end

end
