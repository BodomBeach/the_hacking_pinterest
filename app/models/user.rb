class User < ApplicationRecord
  has_many :pins
  has_many :comments
  #Liaison des tables avec clé étrangère
end
