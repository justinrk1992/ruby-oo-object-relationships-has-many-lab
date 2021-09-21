class Artist

    attr_accessor :name

    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(x)
        song = Song.new(x)
        song.artist = self
        @@song_count += 1
    end

    def self.song_count
        Song.artist.all.each 
    end

    def self.song_count
        Song.all.count
    end

end

