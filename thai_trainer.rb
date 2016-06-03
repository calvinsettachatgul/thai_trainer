require 'io/console'
first_consonants = "กขฃคฅฆงจฉชซ"
second_consonants = ""
third_consonants = ""
fourth_consonants = ""


def print_letters
   return "กขฃคฅฆงจฉชซ"
end

def start
  letters_arr = print_letters.split("")
  rand_letter_index = rand(letters_arr.size)
  puts letters_arr[ rand_letter_index ]
  input = STDIN.getch
  while( input != "q") do
    if(input != letters_arr[rand_letter_index])
      	
        puts "incorrect"
        puts letters_arr[rand_letter_index]
    else
        rand_letter_index = rand(letters_arr.size)
       puts letters_arr[rand_letter_index]
    end
    input = STDIN.getch
  end
end

print_letters

start
