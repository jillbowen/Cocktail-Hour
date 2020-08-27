require_relative "./version.rb"
class JshortCliProject::API
  
    def self.get_cocktail_info       
        cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/random.php")
        name = cocktail["drinks"][0]["strDrink"]
        ingredients = []
            ingredients << ing_1 = cocktail["drinks"][0]["strIngredient1"]
            ingredients << ing_2 = cocktail["drinks"][0]["strIngredient2"]
            ingredients << ing_3 = cocktail["drinks"][0]["strIngredient3"]
            ingredients << ing_4 = cocktail["drinks"][0]["strIngredient4"]
            ingredients << ing_5 = cocktail["drinks"][0]["strIngredient5"]
            ingredients << ing_6 = cocktail["drinks"][0]["strIngredient6"]
            ingredients << ing_7 = cocktail["drinks"][0]["strIngredient7"]
            ingredients << ing_8 = cocktail["drinks"][0]["strIngredient8"]
            ingredients << ing_9 = cocktail["drinks"][0]["strIngredient9"]
            ingredients << ing_10 = cocktail["drinks"][0]["strIngredient10"]
            ingredients << ing_11 = cocktail["drinks"][0]["strIngredient11"]
            ingredients << ing_12 = cocktail["drinks"][0]["strIngredient12"]
            ingredients << ing_13 = cocktail["drinks"][0]["strIngredient13"]
            ingredients << ing_14 = cocktail["drinks"][0]["strIngredient14"]
            ingredients << ing_15 = cocktail["drinks"][0]["strIngredient15"]   
        instructions = cocktail["drinks"][0]["strInstructions"]       
        JshortCliProject::Cocktail.new(name, ingredients, instructions) 
    end 
end