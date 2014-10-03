require_relative '../controllers/game_controller.rb'

module View

  def self.start
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
    puts "Game Instructions: Guess that ASCII bat!"
    puts "Each picture is a Brown Bat member."
    puts "The ASCII bat will be revealed gradually."
    puts "You have five chances to guess their name!"
    puts "The more you guess, the lower your score."
    puts "Good luck!"
    puts ""
    puts "Options:"
    puts "play!"
    high_scores
    puts ""
  end

  def self.wrong
    clear_screen!
    puts "aww too bad!"
  end

  def self.correct
    clear_screen!
    puts "good job!"
  end

  def self.game_over
    clear_screen!
    puts "sorry, nice try"
  end

  def self.high_scores(users)
    users.each do |user|
      puts ""
      puts "Name | High Score"
      puts "----------------------------------"
      puts "#{user.name} | #{user.score}"
      puts "----------------------------------"
    end
  end

  def clear_screen!
    print "\e[2]"
  end
end










#   def self.welcome_message
#     puts "Welcome to Flash Cards with your Superego!"
#     puts "__________________________________"
#     puts <<-STARTSCREEN
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
#     puts ""
#     puts "play!"
#     puts "high_scores"
#     puts ""
#     `say -v "Vicki" "Welcome to Flash Cards with your Superego!"`
#     `say -v "Alex" "Yo. Yo. You ready?"`

#     @user_input = gets.chomp
#     if @user_input.length == 0
#       puts "Let's get this started"
#       puts "Here is your first question"
#       sleep(4)
#     else
#       welcome_message
#     end
#   end


#   def self.display_definition_to_user(card)
#     puts card.definition
#     `say -v "Alex" "Don't be nervous. You are already the dumbest person in the room so it can't get any worse."`
#   end

#   def self.get_user_input
#     @user_input = gets.chomp
#   end

#   def self.congratulations_message(score)
#     puts "Great job! Your current score is: #{score}. Ready for next question? Hit enter.".green
#     `say -v "Vicki" "Great job! Your current score is: #{score}. Ready for next question? Hit enter."`
#   end

#   def self.try_again_message
#     puts "Incorrect. Guess again.".yellow
#     `say -v "Alex" "Wrong! Come on, focus. You can do better. Or maybe you really are stupid. Guess again."`
#   end


#   def self.display_exit_message
#     puts "Thanks for playing. You did really good."
#     `say -v "Alex" "Bye bye. Now everybody knows how stupid you are!"`
#   end
# end
