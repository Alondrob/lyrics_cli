
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