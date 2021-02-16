User.create!([
  {name: "Sean", email: "sean@gmail.com", password_digest: "$2a$12$vajvoDoKnOWdsJ1t88HZied3ja2aM1MUTYzQQGk8XKC3vseFN4oky", admin: true},
  {name: "Griff", email: "griff@gmail.com", password_digest: "$2a$12$n6bTv3pkpB1dxOQ12YX9ouPOzB8xgffisv7aJTB4IImBIXqKGT0xy", admin: false},
  {name: "Gary", email: "gary@gmail.com", password_digest: "$2a$12$dsZJviWVf8G/hBmfg4FtgOmvZZkUnCWH1MTLxrJDMm/eNeeG0lusO", admin: false}
])
Supplier.create!([
  {name: "Jimmy's Mom's Supplies", email: "jms@gmai.com", phone_number: "888-8898"},
  {name: "Mojache's Magical Stuff", email: "mojachems@gmail.com", phone_number: "777-7787"},
  {name: "Disc Supplier", email: "DiscSupplier@gmail.com", phone_number: "898-9908"}
])
Product.create!([
  {name: "Deputy", price: "12.0", description: "Understable putter with a beaded rim and a flat profile.", quantity: nil, supplier_id: 2},
  {name: "Getaway", price: "15.0", description: "Stable fairway driver with a medium-width rim and a domey profile.", quantity: nil, supplier_id: 2},
  {name: "Truth", price: "15.0", description: "Neutral midrange with a beaded rim and a flat to slightly domey profile.", quantity: nil, supplier_id: 3},
  {name: "Verdict", price: "15.0", description: "Overstable midrange with a beaded rim and a flat to slightly domey profile.", quantity: nil, supplier_id: 3},
  {name: "Judge", price: "12.0", description: "Stable putter with a beaded rim and a flat profile.", quantity: nil, supplier_id: 1},
  {name: "Sarge", price: "18.0", description: "Stable hybrid driver with a medium rim and domey profile.", quantity: nil, supplier_id: 1},
  {name: "EMAC Truth", price: "15.0", description: "Very stable midrange with a beaded rim and a flat to domey profile", quantity: nil, supplier_id: 1},
  {name: "Justice", price: "15.0", description: "[\"\\\"Extremely overstable midrange with a beaded rim and flat profile.\", \"https://i.ytimg.com/vi/85EuW1rgQTM/mqdefault.jpg\"]", quantity: nil, supplier_id: 1}
])
Image.create!([
  {url: "https://www.dynamicdiscs.com/v/vspfiles/photos/8592-2T.jpg", product_id: 2},
  {url: "https://www.dynamicdiscs.com/v/vspfiles/photos/8119-2T.jpg?v-cache=1583221629", product_id: 3},
  {url: "https://s7d2.scene7.com/is/image/academy/10643031?$pdp-gallery-ng$", product_id: 6},
  {url: "https://i.ebayimg.com/images/g/reYAAOSwU9VfEbYg/s-l1600.jpg", product_id: 9},
  {url: "https://cdn.shopify.com/s/files/1/0065/3603/6421/products/LucidEmacTruth-Turquoise_1200x.jpg?v=1608203250", product_id: 4},
  {url: "https://www.dynamicdiscs.com/v/vspfiles/photos/6217-2.jpg?v-cache=1583221629", product_id: 7},
  {url: "https://i.ytimg.com/vi/85EuW1rgQTM/mqdefault.jpg", product_id: 10},
  {url: "https://cdn.shopify.com/s/files/1/0255/7739/0125/products/discs.1402_Dynamic_First_Run_Lucid_Getaway_Skybreed_Discs_360x.jpg?v=1610321324", product_id: 8}
])
Category.create!([
  {name: "Midgrange"},
  {name: "Putter"},
  {name: "Driver"},
  {name: "Approach"}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 1, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 1, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 2, subtotal: "45.0", tax: "4.05", total: "49.05"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 2, quantity: 5, status: "carted", order_id: nil},
  {user_id: 1, product_id: 2, quantity: 5, status: "carted", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 5, status: "carted", order_id: nil}
])
ProductCategory.create!([
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 10, category_id: 1},
  {product_id: 8, category_id: 3},
  {product_id: 9, category_id: 3},
  {product_id: 2, category_id: 4},
  {product_id: 3, category_id: 4},
  {product_id: 4, category_id: 4},
  {product_id: 6, category_id: 4},
  {product_id: 7, category_id: 4},
  {product_id: 10, category_id: 4}
])
