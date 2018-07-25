class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments
  #Liaison des tables avec clé étrangère
end
