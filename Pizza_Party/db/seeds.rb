restaurants = PizzaPlace.create([
  {name: "Brooklyn Pizza", address: "100 Broadway",  city: "New York", state: "NY", zipcode: 10101, phone: "212-319-1939", rating: 3.5, website: "www.pizza.com"}, {name: "New York Pizza", address: "100 1st Ave",  city: "New York", state: "NY", zipcode: 14101, phone: "212-319-3432", rating: 4, website: "www.pizzaNYC.com"}])

comments = Comment.new({body:"asdfjlasdflkasdjf", pizza_place_id: 1, user_id: 1})
