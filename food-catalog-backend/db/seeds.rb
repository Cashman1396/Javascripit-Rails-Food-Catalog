# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Catalog.destroy_all
Food.destroy_all

entrees, desserts, drinks = Catalog.create([
  {name: "Entrees"}, {name: "Desserts"}, {name: "Drinks"}
])

entrees.foods.create([
  {
    name: "Lemon Poppy Seed Muffin", 
    cost: 2.25, 
    description: "Lemon poppy seed muffin.",
    image_url: "assets/images/lemon-poppyseed-muffin.jpeg"
  },
  {
    name: "Dugtrio Sandwich Trio",
    cost: 1.60,
    description: "Dugtrio Sandwich Trio",
    image_url: "assets/images/dugtrio-sandwich.jpg"
  },
  {
    name: "Gossifleur Combo Plate",
    cost: 3.95,
    description: "Delicious combo plate in the form of Gossifleur",
    image_url: "assets/images/gossifleur-plate.jpg"
  }
])

  desserts.foods.create([
  {
    name: "Hot Coffee", 
    cost: 1.50,
    description: "Hot coffee brewed via French press method served in a 12oz mug.",
    image_url: "assets/images/hot-coffee.jpg"
  },
  {
    name: "Fluffy Eevee Pancakes",
    cost: 1.00,
    description: "Bouncy pancakes that look like eevee",
    image_url: "assets/images/eevee-pancakes.jpg"
  },
  {
    name: "Swablu Shaved Ice",
    cost: 1.50,
    description: "Light, and Fluffy Ice cream",
    image_url: "assets/images/swablushavedice.jpg"
  },
  {
    name: "Burnt-Caramel Vulpix Sundae",
    cost: 2.50,
    description: "Caramel Sundae",
    image_url: "assets/images/vulpix-sundae.jpg"
  }

])

  drinks.foods.create([
  {
    name: "Iced Coffee", 
    cost: 2.00,
    description: "Coffee brewed double-strength via French press method served in 16oz glass over ice.",
    image_url: "assets/images/iced-coffee.jpg"
    },
    {
    name: "Buneary Frappe",
    cost: 1.00,
    description: "Buneary Frappe drink looks like a Buneary",
    image_url: "assets/images/buneary-frappe.jpg"
   },
   {
    name: "Lilligant Floral Tea",
    cost: 0.75,
    description: "A refreshing drink for pokemon",
    image_url: "assets/images/lilligant-tea.jpg"   
   }     
])

