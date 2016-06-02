require_relative 'teacher'
class ApprenticeTeacher < Teacher
  attr_reader :performance_rating

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def set_performance_rating(rating)
    # @performance_rating = rating
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def send(p_rating)
    raise NoMethodError
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
