class MilosHelper
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  def run
    welcome
    login_or_signup
    # wanna_see_favs?
    # some_method(some_argument)
    bye
  end

  private

  def welcome
    puts "Hello!"
  end

  def login_or_signup
    puts "What is your name?"
    name_answer = gets.chomp
    puts "What is your username?"
    username_answer = gets.chomp
    puts "Enter your password."
    pw_answer = gets.chomp
    @user = User.find_or_create_by(name: name_answer, username: username_answer, password: pw_answer)
  end

  def bye
    puts "Goodbye!"
  end
end
