require_relative "./version.rb"
class JshortCliProject::CLI 

    def start
        puts "\nWelcome to cocktail hour! Do you need some 'gin'spiration? Type y or n\n"
            @input = gets.strip
                validate_input
    end

    def validate_input
        if @input == 'y' 
            get_cocktail
        elsif @input != 'y' && @input != 'n'
            puts "\nThat doesn't seem right, have you had one too many? Let's try again."
            sleep(1)
            start
        else
            @input == 'n'
            puts "\nOk, I'll be here if you need to shake things up!\n\n"
        end
    end
    
    def get_cocktail
        puts "\nHow about this one?"
        sleep(1)
        JshortCliProject::Cocktail.all.each {|c| puts "\n#{c.name}\n\n Ingredients: #{c.ingredients}\n\n #{c.instructions}"}
        sleep(6)
        puts "\nEnjoy!"
        JshortCliProject::Cocktail.clear
        another_round?
    end

    def another_round?
        sleep(3)
        puts "\nWould you like another round? Type y or n\n"
        get_answer
    end

    def get_answer
        @answer = gets.strip
        validate_answer
    end

    def validate_answer
        if @answer == 'y' 
            puts "Here's another!\n"
            get_cocktail
        elsif @answer != 'y' && @answer != 'n' 
            puts "You seem a bit pickled! I didn't understand your answer, let's try again."
            another_round?
        else @answer == 'n' 
            puts "\nYou don't have to go home, but you can't stay here! Have a great night!\n\n"
        end
    end
end
