require_relative "./version.rb"
class JshortCliProject::CLI 
    
    def start
        puts "Welcome to cocktail hour! Do you need some 'gin'spiration?"
        JshortCliProject::API.get_gin_cocktail
        JshortCliProject::API.get_vodka_cocktail
        JshortCliProject::API.get_whiskey_cocktail
        JshortCliProject::API.get_rum_cocktail
        JshortCliProject::API.get_tequila_cocktail
        choose_spirit
    end

    def choose_spirit
        puts <<-DOC
            Please select a spirit:
            For gin type '1' 
            For vodka type '2' 
            For whiskey type '3' 
            For rum type '4' 
            For tequila type '5'
        DOC
        #heredoc allows for a long string in a paragraph format
        get_spirit_input
    end

    def get_spirit_input
        @spirit_input = gets.strip.to_i
        validate_input
    end
    
    def validate_input
        if @spirit_input < 1 || @spirit_input > 5
            puts "That doesn't seem right! Did you start cocktail hour without me?"
            choose_spirit
        else @spirit_input >= 1 || @spirit_input <= 5
            list_cocktails
        end
    end

    def list_cocktails
        if @spirit_input == 1
            puts "Aviation" #insert gin cocktail
        elsif @spirit_input == 2 
            puts "Moscow Mule" #insert vodka cocktail
        elsif @spirit_input == 3
            puts "Whiskey Sour" #insert whiskey cocktail
        elsif @spirit_input == 4
            puts "Hemingway Special" #insert rum cocktail
        else @spirit_input == 5
            puts "Margarita" #insert tequila cocktail
        end
        puts "Enjoy your cocktail!"
        another_round?
    end

    def another_round?
        puts "Would you like another round? y or n"
        get_answer
    end

    def get_answer
        @answer = gets.strip
        validate_answer
    end

    def validate_answer
        if @answer == 'y' 
            choose_spirit
        elsif @answer != 'y' && @answer != 'n' 
            puts "You seem a bit pickled! I didn't understand your answer, let's try again."
            another_round?
        else @answer == 'n' 
            puts "You don't have to go home, but you can't stay here. Goodnight!"
        end
    end
end
