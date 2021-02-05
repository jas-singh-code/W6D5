# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create(
    [
        {name: "Garfield", color: "black", sex: "M", birth_date: "1922/04/05", description: "its Garfield"},
        {name: "Kitty", color: "white", sex: "F", birth_date: "2000/04/05", description: "its Kitty"},
        # {name: "Cat-Rich", color: "grey", sex: "M", birth_date: "2010/04/05", description: "its Cat-Rich"},
        {name: "Son-cat", color: "black", sex: "F", birth_date: "2020/04/05", description: "its Son-cat"},
    ]
)