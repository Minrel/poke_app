class Pokemon < ApplicationRecord
  # Primero decimos que pokemon se relaciona con muchos atrapados (y que cuando se borre un pokemon se borren los atrapados)
  has_many :catcheds, dependent: :destroy
  # Luego decimos que pokemon tiene muchos usuarios a través de atrapados
  has_many :users, through: :catcheds
end
