songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  song_array = []
    songs.each_with_index do |elem, index|
      song_array << "#{songs[index+1]} #{elem}"
      end
    puts song_array
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

    if songs.include?(response)
      puts "Playing #{response}"
    else
      song_num = response.to_i
        if song_num < 1 || song_num > songs.length
          puts "Invalid input, please try again"
        else
          puts "Playing #{songs[song_num - 1]}"
      end
    end
  end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  puts "Please enter a command:"
  response = gets.chomp
  
  until response == "exit"

    case response
    when "list"
      list()
    when "play"
      play()
    when "help"
      help
    end
  exit
end

end
