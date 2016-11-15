# create random number & save random number to variable
  def computer_random(number)
    return "#{number}"
  end

  computer_number = computer_random(rand(1..100))
  winning_number = computer_number.to_i
  p winning_number

# get usere number

  def users_input(question)
    print "#{question}"
    gets.chomp
  end

user_answer = users_input("What is your ramdom number?")
users_number = user_answer.to_i
p users_number
