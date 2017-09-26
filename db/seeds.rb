# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all
Pokemon.create(
  [
    {
      name: 'pikachu',
      description: 'tipo trueno'
    },
    {
      name: 'squirtle',
      description: 'tipo agua'
    },
    {
      name: 'charmander',
      description: 'tipo fuego'
    },
    {
      name: 'bulbasaur',
      description: 'tipo hierba'
    },
    {
      name: 'zapdos',
      description: 'tipo trueno'
    },
    {
      name: 'ninetales',
      description: 'tipo fuego'
    }
  ]
)

User.destroy_all
User.create(
[
  {
    name: 'Jorge',
    email: 'jv.vargass@gmail.com',
    password: '12345678',
    role: 'admin'
  },
  {
    name: 'usuario2',
    email: 'usuario2@usuario.com',
    password: '12345678',
    role: 'trainer'
  }
]
)
