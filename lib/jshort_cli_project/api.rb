require_relative "./version.rb"
class JshortCliProject::API
    
    def self.get_gin_cocktail
        @gin_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=aviation")
        gin_name = @gin_cocktail["drinks"][0]["strDrink"]
        gin_ing_1 = @gin_cocktail["drinks"][0]["strIngredient1"]
        gin_ing_2 = @gin_cocktail["drinks"][0]["strIngredient2"]
        gin_ing_3 = @gin_cocktail["drinks"][0]["strIngredient3"]
        gin_inst = @gin_cocktail["drinks"][0]["strInstructions"]
        binding.pry
    end

end


# gin link to aviation - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=aviation
# vodka link to moscow mule - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=moscow&mule&limit=1
# whiskey link to whiskey sour - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=whiskey&sour
# rum link to hemingway special - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=hemingway
# tequila link to margarita - https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=11007