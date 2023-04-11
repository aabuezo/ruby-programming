require 'rubygems'
require 'dish'  # hash to object

hash = {
  movie: "Star Wars",
  actors: [
    { age: 22, name: "Luke" },
    { age: 35, name: "Han" },
    { age: 400, name: "Yoda" },
  ],
  favorite: true
}

p media = Dish(hash)
p media.movie
p media.actors.length
p media.actors[0].name
p media.actors[1].name
p media.actors[2].name
p media.favorite?

