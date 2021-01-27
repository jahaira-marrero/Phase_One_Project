class MilosHelper
  # here will be your CLI!
  # it is not an AR class so you need to add attr
    attr_reader :user, :dog, :category

  def run
    welcome
    login_or_signup
    dog_info
    dog_update
    delete_dog
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
    
  def dog_info
    puts "What's your dog's name?"
    dog_name_answer = gets.chomp
    puts "What's your dog's age?"
    dog_age_answer = gets.chomp.to_i
    puts "What's your dog's weight?"
    dog_weight_answer = gets.chomp.to_i
    puts "Does your dog have a sensitive or nonsensitive stomach?"
    dog_sensitivity_answer = gets.chomp
    category = Category.find_by(name: dog_sensitivity_answer)
    @dog = Dog.find_or_create_by(name: dog_name_answer, age: dog_age_answer, weight: dog_weight_answer, food_sensitivity: dog_sensitivity_answer, user_id: @user.id, category_id: category.id)
    puts "Great! Your dog's name is #{@dog.name}, weighs #{@dog.weight}lbs, is #{@dog.age} year(s) old, and has a #{dog_sensitivity_answer} tummy."
  end

  def dog_update
    puts "Is your dog's name correct?"
    answer = gets.chomp
    if answer == "no"
      puts "Please provide the correct name."
      update_answer = gets.chomp
      puts "Ok, let's fix that."
      @dog.update(name: update_answer)
      puts "Your dog's name has been updated to #{@dog.name}."
    else
      puts "Great! Let's check out some food options."
    end
  end

  def delete_dog
    puts "Which dog would you like to delete?"
    @user.dogs.each{|dog| puts dog.name}
    delete_dog = gets.chomp
    dog = Dog.find_by(name: delete_dog).destroy
    puts "Bye #{dog.name}!"
  end

  def bye
    system 'clear'
    puts " Thank you and I hope to see you soon!"
    exit
  end

end
