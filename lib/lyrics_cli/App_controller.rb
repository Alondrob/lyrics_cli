
require_relative './data.rb'
require_relative 'genre.rb'
require 'pry'
def testing
    puts "hello"
end

class User
    
    def initialize
        @songs_guessed = []
        print_help
        read_input
      
    end

    def get_songs_guessed
        @songs_guessed
    end

    def add_song_guess(song_name)
        @songs_guessed << song_name
    end



    def print_help
        puts  "Welcome Lyrics expert!"
        puts  "To start the game please type => start"
        puts  "To exit at any time just type => quit "
    end

    def start_program
        puts :"Please enter your name:"
        @name_input = gets.strip
        puts "Welcome #{@name_input}!!, please choose from the following genres!"
        puts
        pick_genre
        puts
        genre_input

    end

    def pick_genre
             music_data.keys.each {|i| puts i.capitalize}
    
    end

    def genre_input
        puts ":=>"
        
        input = gets.strip
        @max_points = 10 
        @current_points = 0
        while @current_points < @max_points do
            if input != "quit"
            
            
            puts genre_data[input.downcase.to_sym]
           
            if genre_data.key?(input.to_sym) == true
                genre_select(input.downcase.to_sym)
            else
                
                puts "Your entry is not valid , please enter a valid genre!"
                genre_input
            end
        else 
            abort
        end

        end
            puts "Congrats, you completed your lyrics challenge!"
     end


    def genre_select(input)
        genre = Genre.new(input)
        genre.add_artists(music_data[input.downcase.to_sym])
        puts genre_data[input.to_sym]
        song = genre.artists.sample.songs.sample
        while get_songs_guessed.include?(song.name) do 
              song = genre.artists.sample.songs.sample
        end
        artist = song.artist
        song.lyrics = Api.get_lyrics(artist.name.gsub(" ", "_"), song.name.gsub(" ", "_"))
        
        if song.lyrics
            puts "========================================>"
            puts "Alright #{@name_input}, guess the song!"
            puts "\n======================================>"
            puts song.lyrics
            song_guess(song)
            artist_guess(artist)
            sleep(2)
        else
            genre_input
        end
    end




    def read_input
        puts "Type here:"
        input = gets.strip
        if "quit" == input
            abort("Goodbye!")
        elsif "start" == input
            start_program
        else
            puts "Not a valid input, please re-type a valid input!"
            read_input
        end
    end

     def song_guess(song)
        add_song_guess(song.name.to_s)
        puts "\nType your guess!"
        puts "=============>"
        song_input = gets.strip      
       
        if song_input.downcase == song.name.downcase
            
            puts "Ohh wow!!, you know your lyrics !"
            puts "\nYour total points is #{@current_points += 1}"

        elsif song_input == "quit"
            puts "Goodbye!"
              abort

        else
            puts "Not quite, better luck next time!"
        end
       
     end


     def artist_guess(artist)
        puts "\nNow, can you guess the artist too ?"
        puts "=============>"
        artist_input = gets.strip      
        
        if artist_input.downcase == artist.name.downcase   
            puts "\n Wowww, you really are a pro at this!!"
            puts "\nYour total points is #{@current_points += 1}"
        elsif artist_input == "quit"
              puts "Goodbye!"
              abort
        else
            puts "not really, but lets try something else!"
        end
     end


end



