require "http"
system "clear"

products_index = HTTP.get("http://localhost:3000/api/products/")
# pp products_index.parse

products_show = HTTP.get("http://localhost:3000/api/products/5")
# pp products_show.parse

products_create = HTTP.post("http://localhost:3000/api/products", :form => {name: "Enforcer", price: "15", description: "Extremely overstable distance driver with a wide rim and flat to domey profile."})
pp products_create