class Artist

attr_accessor :name

@@songs = []

def initialize(name)
   @name = name
end

def songs
    @@songs  
end

def add_song(song)
   @song = song
   @@songs << @song
   @song.artist = self
end

def add_song_by_name(name)
   name = Song.new(name)
   @@songs << name
end

def song_count
end

end
