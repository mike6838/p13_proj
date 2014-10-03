
# puts <<-STARTSCREEN
#    .__   __.      ___      .___  ___.  _______
#    |  \\ |  |     /   \\     |   \\/   | |   ____|
#    |   \\|  |    /  ^  \\    |  \\  /  | |  |__
#    |  . `  |   /  /_\\  \\   |  |\\/|  | |   __|
#    |  |\\   |  /  _____  \\  |  |  |  | |  |____
#    |__| \\__| /__/     \\__\\ |__|  |__| |_______|
# .___________. __    __       ___   .___________.
# |           ||  |  |  |     /   \\  |           |
# `---|  |----`|  |__|  |    /  ^  \\ `---|  |----`
#     |  |     |   __   |   /  /_\\  \\    |  |
#     |  |     |  |  |  |  /  _____  \\   |  |
#     |__|     |__|  |__| /__/     \\__\\  |__|
#      ___           _______.  ______  __   __
#     /   \\         /       | /      ||  | |  |
#    /  ^  \\       |   (----`|  ,----'|  | |  |
#   /  /_\\  \\       \\   \\    |  |     |  | |  |
#  /  _____  \\  .----)   |   |  `----.|  | |  |
# /__/     \\__\\ |_______/     \\______||__| |__|
#       .______        ___   .___________.
#       |   _  \\      /   \\  |           |
#       |  |_)  |    /  ^  \\ `---|  |----`
#       |   _  <    /  /_\\  \\    |  |
#       |  |_)  |  /  _____  \\   |  |
#       |______/  /__/     \\__\\  |__|

# STARTSCREEN

#-------------------------

require 'colorize'
# Flash Card View
class View
  attr_accessor :user_input

  def self.welcome_message
    puts "Welcome to Flash Cards with your Superego!"
    puts "__________________________________"
    puts <<-STARTSCREEN
   .__   __.      ___      .___  ___.  _______
   |  \\ |  |     /   \\     |   \\/   | |   ____|
   |   \\|  |    /  ^  \\    |  \\  /  | |  |__
   |  . `  |   /  /_\\  \\   |  |\\/|  | |   __|
   |  |\\   |  /  _____  \\  |  |  |  | |  |____
   |__| \\__| /__/     \\__\\ |__|  |__| |_______|
.___________. __    __       ___   .___________.
|           ||  |  |  |     /   \\  |           |
`---|  |----`|  |__|  |    /  ^  \\ `---|  |----`
    |  |     |   __   |   /  /_\\  \\    |  |
    |  |     |  |  |  |  /  _____  \\   |  |
    |__|     |__|  |__| /__/     \\__\\  |__|
     ___           _______.  ______  __   __
    /   \\         /       | /      ||  | |  |
   /  ^  \\       |   (----`|  ,----'|  | |  |
  /  /_\\  \\       \\   \\    |  |     |  | |  |
 /  _____  \\  .----)   |   |  `----.|  | |  |
/__/     \\__\\ |_______/     \\______||__| |__|
      .______        ___   .___________.
      |   _  \\      /   \\  |           |
      |  |_)  |    /  ^  \\ `---|  |----`
      |   _  <    /  /_\\  \\    |  |
      |  |_)  |  /  _____  \\   |  |
      |______/  /__/     \\__\\  |__|

STARTSCREEN
    puts ""
    puts "Here are the instructions:"
    puts "To play, hit enter to start and just enter the correct term for each definition"
    puts "Type 'exit' to quit the program."
    `say -v "Vicki" "Welcome to Flash Cards with your Superego!"`
    `say -v "Alex" "Yo. Yo. You ready?"`

    @user_input = gets.chomp
    if @user_input.length == 0
      puts "Let's get this started"
      puts "Here is your first question"
      sleep(4)
    else
      welcome_message
    end
  end


  def self.display_definition_to_user(card)
    puts card.definition
    `say -v "Alex" "Don't be nervous. You are already the dumbest person in the room so it can't get any worse."`
  end

  def self.get_user_input
    @user_input = gets.chomp
  end

  def self.congratulations_message(score)
    puts "Great job! Your current score is: #{score}. Ready for next question? Hit enter.".green
    `say -v "Vicki" "Great job! Your current score is: #{score}. Ready for next question? Hit enter."`
  end

  def self.try_again_message
    puts "Incorrect. Guess again.".yellow
    `say -v "Alex" "Wrong! Come on, focus. You can do better. Or maybe you really are stupid. Guess again."`
  end


  def self.display_exit_message
    puts "Thanks for playing. You did really good."
    `say -v "Alex" "Bye bye. Now everybody knows how stupid you are!"`
  end
end
