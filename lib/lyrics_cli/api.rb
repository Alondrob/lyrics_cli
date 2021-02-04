require 'open-uri'
require 'net/http'
require 'json'




class Api 

    def self.get_lyrics(artist, song)
        
        url = "https://api.lyrics.ovh/v1/#{artist}/#{song}"
        uri = URI.parse(url)
        request = Net::HTTP.get_response(uri)
        request.body
        request_2 = JSON.parse(request.body)
        @response = request_2["lyrics"].gsub("\r\n", "\n\n")
        
        
    end

end




