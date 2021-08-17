def question
  num1 = rand(1..20)
  num2 = rand(1..20)
  print "What does #{num1} plus #{num2} equal? "
  answer = gets.chomp
  if answer.to_i == num1 + num2
    return true
  else
    return false
  end
end