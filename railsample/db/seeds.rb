Author.create!([
  {name: "Bill Gates", country: "USA"},
  {name: "Albert Einstein", country: "USA"},
  {name: "Leonard Cohen", country: "Canada"}
])
Book.create!([
  {title: "Road to the future", sales: 234, author_id: 1, genre_id: 1},
  {title: "Tesla", sales: 45478, author_id: 2, genre_id: 2},
  {title: "Business @ the Speed of Thought", sales: 12537, author_id: 1, genre_id: 1}
])
Genre.create!([
  {name: "Science Fiction"},
  {name: "Novell"}
])
