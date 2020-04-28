Article.destroy_all

arthur = User.create!(
  email: "arthurrr@gmail.com",
  password: "arthurrr",
  admin: false,
  )

jeanmax = User.create!(
  email: "jm@gmail.com",
  password: "jeanmax",
  admin: true,
  )

Article1 = Article.create!(
  title: "Article1",
  category: ["Bourse", "Crypto", "Epargne", "Immobilier"].sample,
  content: "blablabla"
)

Article2 = Article.create!(
  title: "Article2",
  category: ["Bourse", "Crypto", "Epargne", "Immobilier"].sample,
  content: "blablabla"
)

Article3 = Article.create!(
  title: "Article3",
  category: ["Bourse", "Crypto", "Epargne", "Immobilier"].sample,
  content: "blablabla"
)

Article4 = Article.create!(
  title: "Article4",
  category: ["Bourse", "Crypto", "Epargne", "Immobilier"].sample,
  content: "blablabla"
)
puts "Done!"
