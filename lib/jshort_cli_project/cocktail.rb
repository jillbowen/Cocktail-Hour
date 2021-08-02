class JshortCliProject::Cocktail
    attr_accessor :name, :measurement_ingredient, :instructions
    @@all = []
    
    def initialize(name, measurement_ingredient, instructions)
        @name = name
        @measurement_ingredient = measurement_ingredient.compact
        @instructions = instructions
        save
    end
    
    def self.all
        get_cocktail if @@all.empty?
        @@all
    end
    
    def self.get_cocktail
        JshortCliProject::API.get_cocktail_info
    end

    def save
        @@all << self
    end
    
    def self.clear
        @@all.clear
    end
end
