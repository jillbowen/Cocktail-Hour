class JshortCliProject::CLI 

    def start
        print "\nWelcome to Cocktail Hour! Do you need some 'gin'spiration? Type y or n: "
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
        JshortCliProject::Cocktail.all.each do |c| 
            puts "\n#{c.name}\n\n" 
            sleep(2)
            puts "Ingredients: #{c.measurement_ingredient.join(' ').strip!}\n\n"
            sleep(4)
            puts "#{c.instructions}"
        end
        sleep(6)
        puts "\nEnjoy!"
        JshortCliProject::Cocktail.clear
        another_round?
    end

    def another_round?
        sleep(3)
        print "\nWould you like another round? Type y or n: "
        @answer = gets.strip
        validate_answer
    end

    def validate_answer
        if @answer == 'y' 
            puts "Here's another!\n"
            get_cocktail
        elsif @answer != 'y' && @answer != 'n' 
            puts "\nYou seem a bit pickled! I didn't understand your answer, let's try again."
            another_round?
        else @answer == 'n' 
            puts "\nYou don't have to go home, but you can't stay here! Have a great night!\n\n"
        end
    end
end
