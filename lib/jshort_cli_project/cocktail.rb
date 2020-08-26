require_relative "./version.rb"
class JshortCliProject::Cocktail
    attr_accessor :name
    @@all = []
    
    def initialize
        @name = name
        save
    end
    
    def get_cocktail
        JshortCliProject::API.get_cocktail_info
        all
    end

    def self.all
        get_cocktail if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end 
end
