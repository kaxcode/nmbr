  # create random number & save random number to variable
  def computer_random(number)
    return "#{number}"
  end

  computer_number = computer_random(rand(1..100))
  winning_number = computer_number.to_i
  # CHEAT! GET THE WINNING NUMBER
  # p winning_number

  # get users number
  def users_input(question)
    print "#{question}"
    gets.chomp
  end

  count = 0
  guesses = []

  loop do
    user_answer = users_input("What is your ramdom number?🤔   ")
    users_number = user_answer.to_i

    if guesses.include?(users_number)
      puts "Are you sleepy? You tried that number already"
    end

    guesses << users_number

    if users_number >= winning_number
      puts "#{users_number} is TOO HIGH 👆, please try again"
    end

    if users_number <= winning_number
      puts "TOO LOW 👇, please try again"
    end

    if users_number == winning_number
      puts "You got it!!! 👏🍕🍾🚀🎉"
      break
    end

    count += count

    if count >= 5
      puts "You loooose! 😵 "
      break
    end
  end
