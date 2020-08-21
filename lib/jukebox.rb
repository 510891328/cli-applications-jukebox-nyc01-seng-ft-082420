def run(song)
  puts "Please enter a command:"
  choice = gets.chomp
  if choice == "help"
    help
  elsif choice == "list"
    list(song)
  elsif choice == "play"
    song = list(song)
    play(song)
  elsif choice == "exit"
    exit
  else
    puts "Invalid command"
  end
end

def help 
  puts "I accept the following commands:\n
        - help : displays this help message\n
        - list : displays a list of songs you can play\n
        - play : lets you choose a song to play\n
        - exit : exits this program"
end

def list(song)
  song.each_with_index {|v|
    puts v
  }
end

def play(song)
  puts "Please enter a song name or number:"
  name = gets.strip
  if name.is_a?(String)
    song { |v, i|
      if name == v
        puts "playing #{v}"
      end
    }
  end

  if name.is_a?(Numeric)
    song { |v, i|
      if name == i+1
        puts "playing #{v}"
      end
    }
  end
  
end

def exit_jukebox
  puts "Goodbye"
end