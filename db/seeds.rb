# # THIS SEED FILE NEEDS TO BE ENTIRELY REPLACED -- I'M LEAVING CODE FOR YOUR REFERENCE ONLY!

User.destroy_all
Category.destroy_all
Dog.destroy_all
Dog.reset_pk_sequence
Category.reset_pk_sequence
User.reset_pk_sequence
DogFoodCategory.destroy_all
DogFoodCategory.reset_pk_sequence
FoodOption.destroy_all
FoodOption.reset_pk_sequence

# ########### different ways to write your seeds ############
#Users
martin = User.create(name: "Martin Payne", username: "mpayne", password: "wazzup")
tommy = User.create(name: "Tommy Strawn", username: "tstrawn", password: "employed")
cole = User.create(name: "Cole Brown", username: "cbrown", password: "bigshirley")
gina = User.create(name: "Gina Waters", username: "gwaters", password: "bosslady")
pam = User.create(name: "Pamela James", username: "pjames", password: "ihatemartin")

#Category
sensitive = Category.create(name: "sensitive")
nonsensitive = Category.create(name: "nonsenstive")



#Dogs
biggie = Dog.create(user_id: martin.id, category_id: sensitive.id, name: "Biggie", age: 3, weight: 9, food_sensitivity: true)
ghost = Dog.create(user_id: tommy.id, category_id: nonsensitive.id, name: "Ghost", age: 1, weight: 40, food_sensitivity: false)
bart = Dog.create(user_id: cole.id, category_id: nonsensitive.id, name: "Bart", age: 12, weight: 88, food_sensitivity: false)
lisa = Dog.create(user_id: cole.id, category_id: nonsensitive.id, name: "Lisa", age: 13, weight: 71, food_sensitivity: false)
simon = Dog.create(user_id: gina.id, category_id: sensitive.id, name: "Simon", age: 7, weight: 31, food_sensitivity: true)
captain = Dog.create(user_id: pam.id, category_id: nonsensitive.id, name: "Captain", age: 2, weight: 100, food_sensitivity: false)

Category.create = (user_id: martin.id, dog_id: biggie.id)
# # 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
# basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
# sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
# pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)

# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:
# Plant.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer plant", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
# ## b. by interating over an array of hashes:
# plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake plant", bought: 20170910, color: "dark green"},
#     {name: "polka dot plant", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# plants.each{|hash| Plant.create(hash)}

# # 3. Use Faker and mass create
# ## step 1: write a method that creates a person
# def create_person
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     person = Person.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(person)
#     plants_number = rand(1..4)
#     plants_number.times do 
#         PlantParenthood.create(
#             plant_id: Plant.all.sample.id, 
#             person_id: person.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

# ## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


puts "🔥 🔥 Woof! Woof! It works! 🔥 🔥 "