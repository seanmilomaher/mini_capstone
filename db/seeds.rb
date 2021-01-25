# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create(
#   [
#     {
#       name: "Judge",
#       price: 12,
#       description: "Stable putter with a beaded rim and a flat profile."
#     },
#     {
#       name: "Deputy",
#       price: 12,
#       description: "Understable putter with a beaded rim and a flat profile."
#     },
#     {
#       name: "Truth",
#       price: 15,
#       description: "Neutral midrange with a beaded rim and a flat to slightly domey profile."
#     },
#     {
#       name: "Verdict",
#       price: 15,
#       description: "Overstable midrange with a beaded rim and a flat to slightly domey profile."
#     },
#     {
#       name: "Getaway",
#       price: 15,
#       description: "Stable fairway driver with a medium-width rim and a domey profile."
#     }
#   ]
# )

Supplier.create(
  [
    {
      name: "Jimmy's Mom's Supplies",
      email: 'jms@gmai.com',
      phone_number: '888-8898'
    },
    {
      name: "Mojache's Magical Stuff",
      email: 'mojachems@gmail.com',
      phone_number: '777-7787'
    },
    {
      name: "Disc Supplier",
      email: 'DiscSupplier@gmail.com',
      phone_number: '898-9908'
    }
  ]
)