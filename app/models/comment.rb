class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :pin
  #Liaison des tables avec clé étrangère
end
