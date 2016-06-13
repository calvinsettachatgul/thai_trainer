require 'io/console'
@level = 0
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
    @level = @level + 1
   return @all_consonants[ @level ]
end

def train(letter_set)
  add_interval = 10
  train_streak_count = 0
  current_set = []
  current_letter_set = letter_set
  while(letter_set.size > current_letter_set.size )
    if(train_streak_count > 10)
      rand_add = letter_set[rand(letter_set.length)]
      current_letter_set.delete(rand_add)
      current_set.push(rand_add)
      train_streak_count = 0
    end

  end

end

def query(ques, ans, letters)

    if(ans != ques)
        @streak_count = 0
        puts ans
        puts "incorrect"
    else
        @streak_count += 1
          if ( @streak_count > 19 )
            letters = print_letters(advance_letter_set).split("")
          end
        puts input
        puts "correct streak:#{@streak_count}"
        rand_letter_index = rand(letters.size)
        question = letters[rand_letter_index]
    end

end



def start

  letters_arr = print_letters(@all_consonants[@level]).split("")
  rand_letter_index = rand(letters_arr.size)
  puts letters_arr[ rand_letter_index ]
  input = STDIN.getch
  question = letters_arr[rand_letter_index]
  while( input != "q") do
    # if(input != question)
    #     @streak_count = 0
    #     puts input
    #     puts "incorrect"
    # else
    #     @streak_count += 1
    #       if ( @streak_count > 19 )
    #         letters_arr = print_letters(advance_letter_set).split("")
    #       end
	   #    puts input
	   #    puts "correct streak:#{@streak_count}"
    #     rand_letter_index = rand(letters_arr.size)
    #     question = letters_arr[rand_letter_index]
    # end
    query( question, input, letters_arr)
    puts question
    input = STDIN.getch
  end
end

# p remaining_arr = print_letters(@remaining).split("")
puts print_letters(@first_consonants)

start
