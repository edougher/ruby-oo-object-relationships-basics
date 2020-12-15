
require "pry"
class Dog
    attr_reader :name, :size, :temperment
    def initialize(name, size, temperment)
        @name = name
        @size = size
        @temperment = temperment
    end

    def bark 
        #if quiet? the methods sets temperment == 'quiet'
        if quiet?
            puts "#{name}, the #{size} dog, says rf"
        else
            puts "#{name}, the #{size} dog"
        end
    end

    def quiet?
        temperment == 'quiet'
    end
end

class Song

    attr_accessor :title, :artist

    def initialize(title)
        @title = title
    end
end

class Artist
    attr_accessor :name, :genre

    def initialize(name, genre)
        @name = name
        @genre = genre
    end
end
binding.pry
#create an INSTANCE of both classes(Song, Artist)

#when Song is created/initialized pass in a string for the song's 'title'
hotline_bling = Song.new("Hotline Bling")
#once created you now can set the song's 'artist'(to an instance of a different class), but first lets create an instance of the Artist class
#an instance of Artist has two arguments it needs to assign to the ':name' and ':genre' attributes
drake = Artist.new("Drake", "rap")
#now we can an set the song's 'artist' to equal an instance of the Artist class
hotline_bling.artist = drake
#now a song(hotline_bling)can access the 'name' and 'genre' attributes of the Artist class we assigned it
hotline_bling.artist.name
#=> "Drake"
hotline_bling.artist.genre
#=> "rap"

