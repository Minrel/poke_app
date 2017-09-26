class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:trainer, :admin] # -> ESTO!!

  before_create :set_role
   private
   def set_role
   self.role = 'trainer' if self.role.nil?
   end

   # Primero decimos que usuario tiene muchos atrapados (y que cuando se borre un usuario se borren sus atrapados)
has_many :catcheds, dependent: :destroy
# Luego decimos que usuario tiene muchos pokemones a través de atrapados
has_many :pokemons, through: :catcheds

end
