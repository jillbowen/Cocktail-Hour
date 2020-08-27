require_relative "./version.rb"
class JshortCliProject::Cocktail
    attr_accessor :name, :ingredients, :instructions
    @@all = []
    
    def initialize(name, ingredients, instructions)
        @name = name
        @instructions = instructions
        @ingredients = ingredients.compact.join(', ')
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
