class Carro < ApplicationRecord
  validates :marca, :modelo, :ano, presence: true
end
