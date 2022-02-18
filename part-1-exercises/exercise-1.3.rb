def favorite_movie(movie)
  "My favorite movie is " + movie
end

def favorite_food(food)
  "My favorite food is " + food
end

def favorite_drink(drink)
  "My favorite drink is " + drink
end 

def list_of_favorite_things(movie, food, drink)
  puts favorite_movie(movie)
  puts favorite_food(food)
  puts favorite_drink(drink)
end

list_of_favorite_things("Iron Man", "Pizza", "Rock Star")
