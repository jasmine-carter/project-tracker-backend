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

material = Material.create(name: "White Cording", project_id: project.id, cost: 15.30, purchased: false, quantity: 2)
material2 = Material.create(name: "Dowel", project_id: project.id, cost: 0.50, purchased: false, quantity: 1)

project2 = Project.create(name: "Paint the basement walls", description: "Spruce up them creepy basement walls", completed: false)
p2_material = Material.create(name: "Behr DryPlus paint: Stillness DMW-16", project_id: project2.id, cost: 27.98, quantity: 4, purchased: false)
p2_material2 = Material.create(name: "Wire Brush", project_id: project2.id, cost: 6.98, quantity: 1, purchased: false)
p2_material3 = Material.create(name: "Paint Roller", project_id: project2.id, cost: 5.00, quantity: 1, purchased: false)
