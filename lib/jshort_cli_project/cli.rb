class JshortCliProject::CLI 

    def initialize
        start
    end
    
    def start
        puts "Welcome to cocktail hour! Do you need some 'gin'spiration?"
        choose_spirit
    end

    def choose_spirit
        puts "Please select a spirit. For gin type '1', for vodka type '2', for whiskey type '3', for run type '4'."
        input = gets.strip.to_i
        spirit = validate_input(input)
        validate_input(input)
    end

    def validate_input(input)
        until input >= 1 && input <= 4
            puts "That doesn't seem right! Did you start cocktail hour without me?"
            choose_spirit
        end
    end

end
