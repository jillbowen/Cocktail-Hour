require_relative "./version.rb"
class JshortCliProject::API
    
    def self.get_gin_cocktail
        @gin_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=aviation")
            gin_name = @gin_cocktail["drinks"][0]["strDrink"]
            gin_ing_1 = @gin_cocktail["drinks"][0]["strIngredient1"]
            gin_ing_2 = @gin_cocktail["drinks"][0]["strIngredient2"]
            gin_ing_3 = @gin_cocktail["drinks"][0]["strIngredient3"]
            gin_inst = @gin_cocktail["drinks"][0]["strInstructions"]
    end

    def self.get_vodka_cocktail
        @vodka_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=moscow&mule&limit=1")
            vodka_name = @vodka_cocktail["drinks"][0]["strDrink"]
            vodka_ing_1 = @vodka_cocktail["drinks"][0]["strIngredient1"]
            vodka_ing_2 = @vodka_cocktail["drinks"][0]["strIngredient2"]
            vodka_ing_3 = @vodka_cocktail["drinks"][0]["strIngredient3"]
            vodka_inst = @vodka_cocktail["drinks"][0]["strInstructions"]
    end

    def self.get_whiskey_cocktail
        @whiskey_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=whiskey&sour")
            whiskey_name = @whiskey_cocktail["drinks"][0]["strDrink"]
            whiskey_ing_1 = @whiskey_cocktail["drinks"][0]["strIngredient1"]
            whiskey_ing_2 = @whiskey_cocktail["drinks"][0]["strIngredient2"]
            whiskey_ing_3 = @whiskey_cocktail["drinks"][0]["strIngredient3"]
            whiskey_ing_4 = @whiskey_cocktail["drinks"][0]["strIngredient4"]
            whiskey_inst = @whiskey_cocktail["drinks"][0]["strInstructions"]
    end

    def self.get_rum_cocktail
        @rum_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=hemingway")
            rum_name = @rum_cocktail["drinks"][0]["strDrink"]
            rum_ing_1 = @rum_cocktail["drinks"][0]["strIngredient1"]
            rum_ing_2 = @rum_cocktail["drinks"][0]["strIngredient2"]
            rum_ing_3 = @rum_cocktail["drinks"][0]["strIngredient3"]
            rum_ing_4 = @rum_cocktail["drinks"][0]["strIngredient4"]
            rum_inst = @rum_cocktail["drinks"][0]["strInstructions"]
    end

    def self.get_tequila_cocktail
        @tequila_cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=11007")
            tequila_name = @tequila_cocktail["drinks"][0]["strDrink"]
            tequila_ing_1 = @tequila_cocktail["drinks"][0]["strIngredient1"]
            tequila_ing_2 = @tequila_cocktail["drinks"][0]["strIngredient2"]
            tequila_ing_3 = @tequila_cocktail["drinks"][0]["strIngredient3"]
            tequila_ing_4 = @tequila_cocktail["drinks"][0]["strIngredient4"]
            tequila_inst = @tequila_cocktail["drinks"][0]["strInstructions"]
    end
end


# gin link to aviation - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=aviation
# vodka link to moscow mule - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=moscow&mule&limit=1
# whiskey link to whiskey sour - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=whiskey&sour
# rum link to hemingway special - https://www.thecocktaildb.com/api/json/v1/1/search.php?s=hemingway
# tequila link to margarita - https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=11007