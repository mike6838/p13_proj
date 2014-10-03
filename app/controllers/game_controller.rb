
class GameController
  def initialize(username)
    @user = create_users(username)
    @picture = get_random_pic
    @picture_string = ''
    @picture_index = 0
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
    Picture.sample
  end

  def get_partial_pic
    @picture_string << @picture.parts[index]
    @picture_index += 1
    @picture_string
  end

  def check_input(string)
    if string.downcase == @picture.name
      true
    elsif @picture_index = 5
      nil
    else
      false
    end
  end

  def get_high_scores
    User.all.sort_by { |u| u.score }.reverse.shift(5)
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
