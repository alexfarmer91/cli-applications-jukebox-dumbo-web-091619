# Add your code here

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

#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end
  
def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
  gets.strip
end

def run(my_songs)
 
  puts "Please enter a command:"
  user_response = gets.strip
  
  while user_response != "exit" do 
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.strip
      when "list"
        list(my_songs)
        puts "Please enter a command:"
        user_response = gets.strip
      when "play"
        play(my_songs)
        puts "Please enter a command:"
        user_response = gets.strip
      when "exit"
        exit_jukebox
      else
        puts "Invalid input, please try again:"
        user_response = gets.strip
      end
    end
    if user_response == "exit"
      exit_jukebox
    end 
end







