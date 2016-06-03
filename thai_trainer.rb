require 'io/console'
@first_consonants = "กขฃคฅฆงจฉชซ"
@second_consonants = "ฌญฎฏฐฑฒณดตถ"
@third_consonants = "ทธนบปผฝพฟภม"
@fourth_consonants = "ยรลวศษสหฬอฮ"
@first_vowels = "ะาเแ ิ ี ุ ู"
@tones = " ่ ้ ๊ ๋ ็ ํ ์"

def print_letters(letter_set)
   return letter_set
end

def start
  letters_arr = print_letters(@first_consonants).split("")
  rand_letter_index = rand(letters_arr.size)
  puts letters_arr[ rand_letter_index ]
  input = STDIN.getch
  while( input != "q") do
    if(input != letters_arr[rand_letter_index])
        puts input     	
        puts "incorrect"
        puts letters_arr[rand_letter_index]
    else
	puts input 
	puts "correct"
        rand_letter_index = rand(letters_arr.size)
        puts letters_arr[rand_letter_index]
    end
    input = STDIN.getch
  end
end

puts print_letters(@first_consonants)

start
