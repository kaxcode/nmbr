# create random number & save random number to variable
  def computer_random(number)
    return "#{number}"
  end

  computer_number = computer_random(rand(1..100))
  winning_number = computer_number.to_i
  p winning_number

# get users number

  def users_input(question)
    print "#{question}"
    gets.chomp
  end

count=0

loop do
  count = count +1
  user_answer = users_input("What is your ramdom number?🤔   ")
  users_number = user_answer.to_i
  p users_number

  if users_number >= winning_number
    puts "TOO HIGH 👆, please try again"
  end

  if users_number <= winning_number
    puts "TOO LOW 👇, please try again"
  end

  if users_number == winning_number
    puts "You got it!!! 👏🍕🍾🚀🎉"
    break
  end

  if count >= 5
    puts "You loooose! 😵 "
    break
  end
end
