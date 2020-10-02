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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.strip
    if user_song.to_i >= 1 && user_song.to_i <= songs.length 
      puts "Playing #{songs[user_song.to_i-1]}"
    elsif songs.include?(user_song)
      puts "Playing #{songs.find { |song| song == user_song }}"
    else 
      puts "Invalid input, please try again"
    end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run 
  puts "Please enter a command:"
  input = gets.strip
  case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else 
      "Invalid "
      
  end 
end 
  