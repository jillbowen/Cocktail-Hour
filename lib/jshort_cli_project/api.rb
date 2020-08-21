class JshortCliProject::API

    def self.get_dogs
        resp = HTTParty.get("https://api.petfinder.com/v2/animals?type=dog", {headers: {"Authorization" => "Bearer #{ENV['OAUTH_TOKEN']}"},})
    dogs = resp["animals"]
    binding.pry
    JshortCliProject::Dog.new_from_collection
    end

end
