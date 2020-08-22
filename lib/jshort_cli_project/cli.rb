require_relative "./version.rb"

class JshortCliProject::CLI 
    extend JshortCliProject
    
    def start
        puts "Welcome to cocktail hour! Do you need some 'gin'spiration?"
        choose_spirit
    end

    def choose_spirit
        puts "Please select a spirit. For gin type '1', for vodka type '2', for whiskey type '3', for rum type '4', and for tequila type '5'."
        @input
        validate_input
    end

    def user_input
        @input = gets.strip.to_i
    end
    
    def validate_input
        if @input < 1 || @input > 5
            puts "That doesn't seem right! Did you start cocktail hour without me?"
            choose_spirit
        else @input >= 1 || @input <= 5
            list_cocktails
        end
    end

    def list_cocktails
        if @input == "1"
            puts "Great choice! Here's a recipe for you: "#insert gin cocktail
        elsif @input == "2" 
            puts "Great choice! Here's a recipe for you: "#insert vodka cocktail
        elsif @input == "3"
            puts "Great choice! Here's a recipe for you: "#insert whiskey cocktail
        elsif @input == "4"
            puts "Great choice! Here's a recipe for you: "#insert rum cocktail
        else @input == "5"
            puts "Great choice! Here's a recipe for you: "#insert tequila cocktail
        end

    end

end
