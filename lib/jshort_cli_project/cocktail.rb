require_relative "./version.rb"
class JshortCliProject::Cocktail
    
    @@all = []
    
    def self.get_gin_cocktail
        JshortCliProject::API.get_gin_cocktail
    end

    def save
        @@all << self
    end
    

end
