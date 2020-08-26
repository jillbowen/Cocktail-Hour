require_relative "./version.rb"
class JshortCliProject::API
  
    #this is giving me the info I need, so what is the other one doing

    def get_cocktail_info       
        cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/random.php")
        name = cocktail["drinks"][0]["strDrink"]    
        #instructions = cocktail["drinks"][0]["strInstructions"]       
     end
     JshortCliProject::Cocktail.new 
end


 #     @ingredients = []
    #         ing_1 = cocktail["drinks"][0]["strIngredient1"]
    #         ing_2 = cocktail["drinks"][0]["strIngredient2"]
    #         ing_3 = cocktail["drinks"][0]["strIngredient3"]
    #         ing_4 = cocktail["drinks"][0]["strIngredient4"]
    #         ing_5 = cocktail["drinks"][0]["strIngredient5"]
    #         ing_6 = cocktail["drinks"][0]["strIngredient6"]
    #         ing_7 = cocktail["drinks"][0]["strIngredient7"]
    #         ing_8 = cocktail["drinks"][0]["strIngredient8"]
    #         ing_9 = cocktail["drinks"][0]["strIngredient9"]
    #         ing_10 = cocktail["drinks"][0]["strIngredient10"]
    #         ing_11 = cocktail["drinks"][0]["strIngredient11"]
    #         ing_12 = cocktail["drinks"][0]["strIngredient12"]
    #     @ingredients << ing_1 ?? What's the best way to make this?
    #     @ingredients
