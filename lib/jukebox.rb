def run(song)
  puts "Please enter a command:"
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
  if 
  song { |v, i|
    if name == v || name == i+1
      
  }
end