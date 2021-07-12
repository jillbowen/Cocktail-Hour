class JshortCliProject::API
    
    def self.get_cocktail_info       
        cocktail = HTTParty.get("https://www.thecocktaildb.com/api/json/v1/1/random.php")
        
        name = cocktail["drinks"][0]["strDrink"] 
    
        measurement_ingredient = []
            measurement_ingredient << cocktail["drinks"][0]["strMeasure1"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient1"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure2"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient2"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure3"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient3"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure4"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient4"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure5"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient5"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure6"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient6"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure7"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient7"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure8"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient8"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure9"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient9"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure10"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient10"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure11"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient11"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure12"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient12"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure13"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient13"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure14"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient14"]
            measurement_ingredient << cocktail["drinks"][0]["strMeasure15"]
            measurement_ingredient << cocktail["drinks"][0]["strIngredient15"]   

        instructions = cocktail["drinks"][0]["strInstructions"] 
        
        JshortCliProject::Cocktail.new(name, measurement_ingredient, instructions) 
    end
end