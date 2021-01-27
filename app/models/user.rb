class User < ActiveRecord::Base
# add associatons!
has_many :dogs

    def alert_user(dog)     
      if  dogs.where(food_sensitivity: true).include?(dog)
            puts "Your dog needs a special diet."
      end
    end

    # If alert_user is true (meaning your dog has a food sensitivity)
    # And your dog  is between the ages of 4 and 9
    # Then update the food sensitivity of your dog to false.
    def update_food(dog)
        a = 4..9
        if alert_user && dogs.where(age: num) == a 
            dogs.update(food_sensitivity: false)
        end
    end
end