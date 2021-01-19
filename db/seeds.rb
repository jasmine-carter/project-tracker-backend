# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
Material.destroy_all

project = Project.create(name: "Macrame Table Runner", description: "Table runner for all seasons", completed: false)

material = Material.create(name: "White Cording", project_id: 1, cost: 15.30, purchased: false, quantity: 2)
material2 = Material.create(name: "Dowel", project_id: 1, cost: 0.50, purchased: false, quantity: 1)
