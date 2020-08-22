require_relative "./version.rb"

class JshortCliProject::API
    
    def get_cocktails
        ShakenNotStirred.configure do |config|
            config.api_key = "#{ENV['COCKTAIL_KEY']}"
        end
    filter = ShakenNotStirred.new
    # binding.pry
    end
    
end