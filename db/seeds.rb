  User.destroy_all
  Brewery.destroy_all
  Review.destroy_all


  a = User.create(name: "a")
  b = User.create(name: "b")

  mbc = Brewery.create(name: "Mammoth Brewing Company")
  jlb = Brewery.create(name: "June Lake Brewing")
  shelter =Brewery.create(name: "Shelter Distilling")

  # r1 = Review.create(rating: "I loved it!")
  # r2 = Review.create(rating: "I hated it!")
  # r3 = Review.create(rating: "It was better than i expected.")
  # r4 = Review.create(rating: "It was not as good as i thought it was going to be.")
  # r5 = Review.create(rating: "It was ok.")
