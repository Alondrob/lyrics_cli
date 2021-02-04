
require_relative './data.rb'
require_relative './artist.rb'
require_relative './song.rb'
require_relative './api.rb'
require 'pry'

class Genre

    attr_accessor :name, :artists
    
    def initialize(name = nil )
        @name = name
        @artists = []
    end

    # def genre
    #     x = music_data.map do |genre, artist|  
    #         # binding.pry
    #           genre.to_s
    #     end

    #     #  binding.pry
    # end

    # def genre_capitalize
    #     new_arr = self.genre
    #     genres = new_arr.map {|elm| elm.split}
    #     # binding.pry 
    #     genres_2 = genres.map do |elm|
    #         elm.map {|i| i.capitalize}.join(" ")      
    #     end
    #     genres_2.sort
    # end

    def add_artists(music_data)
        puts "Please wait, loading data ..."
        puts 
        music_data.each do |artist_name, songs|
            # puts artist_name.to_s
            artist = Artist.new(artist_name.to_s)
            self.artists << artist

             songs.each do |song_name|
                song = Song.new(song_name, artist, self.name)
                artist.songs << song
             end
        end
        puts "Data loaded, please continue"
        self
    end










end


 genre = Genre.new
# puts  music_data
#  genre.add_artists(music_data)
# puts game.genre_capitalize