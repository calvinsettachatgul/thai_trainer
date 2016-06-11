require 'io/console'
@streak_count = 0
@first_consonants = "กขฃคฅฆงจฉชซ"
@second_consonants = "ฌญฎฏฐฑฒณดตถ"
@third_consonants = "ทธนบปผฝพฟภม"
@fourth_consonants = "ยรลวศษสหฬอฮ"
@all_consonants = [@first_consonants, @second_consonants, @third_consonants, @fourth_consonants]
@first_vowels = "ะาเแ ิ ี ุ ู"
@tones = " ่ ้ ๊ ๋ ็ ํ ์"

def print_letters(letter_set)
   return letter_set
end

def advance_letter_set

   return @all_consonants[ ++level ]

end




def start
  level = 0
  letters_arr = print_letters(@all_consonants[level]).split("")
  rand_letter_index = rand(letters_arr.size)
  puts letters_arr[ rand_letter_index ]
  input = STDIN.getch
  while( input != "q") do
    if(input != letters_arr[rand_letter_index])
	      @streak_count = 0
        puts input
        puts "incorrect"
        puts letters_arr[rand_letter_index]
    else
        @streak_count += 1
          if ( @streak_count > 19 )
            letters_arr = print_letters(advance_letter_set).split("")
          end
	      puts input
	      puts "correct streak:#{@streak_count}"
        rand_letter_index = rand(letters_arr.size)
        puts letters_arr[rand_letter_index]
    end
    input = STDIN.getch
  end
end

# p remaining_arr = print_letters(@remaining).split("")
puts print_letters(@first_consonants)

start
