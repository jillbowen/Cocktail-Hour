require_relative "./version.rb"
class JshortCliProject::CLI 

    def start
        puts "Welcome to cocktail hour! Do you need some 'gin'spiration? Type y or n"
        @cocktail = JshortCliProject::API.get_cocktail_info(name, instructions)
            @input = gets.strip
                validate_input
    end

    def validate_input
        if @input == 'y' 
            get_cocktail
        elsif @input != 'y' && @input != 'n'
            "That doesn't seem right, have you had one too many? Let's try again."
            start
        else
            @input == 'n'
            puts "Ok, I'll be here if you need to shake things up!"
        end
    end
    
    def get_cocktail
        #ok so how do I get the info to here? ... why is this stumping me so fing hard
        puts <<-DOC 
        How about this one?
        
        Enjoy!
        DOC
        another_round?
    end


    def another_round?
        puts "Would you like another round? Type y or n"
        get_answer
    end

    def get_answer
        @answer = gets.strip
        validate_answer
    end

    def validate_answer
        if @answer == 'y' 
            get_cocktail
        elsif @answer != 'y' && @answer != 'n' 
            puts "You seem a bit pickled! I didn't understand your answer, let's try again."
            another_round?
        else @answer == 'n' 
            puts "You don't have to go home, but you can't stay here! Have a great night!"
        end
    end
end
