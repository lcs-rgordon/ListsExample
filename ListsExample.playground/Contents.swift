import Cocoa

// Definition of a music player
struct MusicPlayer {
    
    // MARK: Stored properties
    
    // List of songs
    private let songList = [

        "Twinkle, Twinkle",
        "Another Song",
        "Third Song",
        "Fourth Song",

    ]

    // What is the current song that is playing?
    var currentSongPosition = 0

    
    // MARK: Functions
    
    // What are all the songs?
    func printAllSongs() {
        for song in songList {
            print("Current song is \(song)")
        }
    }
    
    // What is the current song that is playing?
    func printCurrentSong() {
        print("The current song is \(songList[currentSongPosition])")
    }
    
    // How many songs are there in the list?
    func printSongCount() {
        print("There are \(songList.count) songs in the list.")
    }
    
    // Advance to the next song
    mutating func nextSong() {

        // Advance to the next song
        currentSongPosition += 1
        
        // If the current song position is past the end of the list, go back to first song
        // e.g.: In a list with 4 songs, valid positions are: 0, 1, 2, and 3 and the song list count would be 4.
        //       So, if the current song position is 4, we have gone past the end of the list.
        if currentSongPosition == songList.count {
            currentSongPosition = 0
        }
        
    }

}


// Create a music player instance

var player = MusicPlayer()

player.printSongCount()

player.printAllSongs()

player.printCurrentSong()

player.nextSong()

player.printCurrentSong()

player.nextSong()

player.printCurrentSong()

player.nextSong()

player.printCurrentSong()

player.nextSong()

player.printCurrentSong()

player.nextSong()

player.printCurrentSong()

