require_relative '../views/view.rb'

class GameController
  def initialize()
    @picture_string = ''
    @picture_index = 0
    get_random_pic
  end

  def get_score
    if @user.score > User.find(@user.id).score
      @user.save
    end
    @user.score
  end

  def get_random_pic
    @picture_string = ""
    @picture_index = 0
    @picture = Picture.all.sample
  end

  def get_partial_pic
    @picture_string << @picture.parts[@picture_index].ascii
    @picture_index += 1
    @picture_string
  end

  def check_input(string)
    if string.downcase == @picture.name
      true
    elsif @picture_index == 7
      nil
    else
      false
    end
  end

  def get_high_scores
    users = User.all.sort_by { |u| u.score }.reverse.shift(5)
  end

  def create_users(string)
    @user = User.find_by_name(string)
    if @user #if user exists, start their score to zero
      @user.score = 0
    else
      @user = User.create(name: string, score: 0)
    end
  end

end

