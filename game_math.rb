# This will generate our questions as well as check the math for the questions
class Game_Math
  # relevent data - This class only cares about its question, answer and how evaluate it and inform the user


  def initialize ()
# This will generate a math question and save the answer in an instance variable
    @a = rand(20)
    @b = rand(20)
    @operand = choose_operand()

    puts "a:#{@a} b:#{@b} operand:#{@operand}"
    puts eval"#{@a}#{@operand}#{@b}"
  end

  # This generates a random number an returns a operand based on that
  def choose_operand()
    operand = nil
    num = rand(1..4)

    if num == 1 
      return "+"
    elsif num == 2 
      return "-"
    elsif num == 3 
      return "*"
    else num == 4 
      return "/"
    end
  end

  def is_correct (guess)
# compares the players guess to the answer
  end

end

# OPERAND CANNOT BE / IF THE SECOND NUMBER IS 0
## BUGS TO FIX !!!!
# /vagrant/ruby/twO-O-Player/game_math.rb:13:in `eval': divided by 0 (ZeroDivisionError)
#         from (eval):1:in `initialize'
#         from /vagrant/ruby/twO-O-Player/game_math.rb:13:in `eval'
#         from /vagrant/ruby/twO-O-Player/game_math.rb:13:in `initialize'
#         from main.rb:35:in `new'
#         from main.rb:35:in `loop'
#         from main.rb:28:in `initialize'
#         from main.rb:45:in `new'
#         from main.rb:45:in `<main>'