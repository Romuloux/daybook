class Book < ApplicationRecord

  # User relationship
  belongs_to :user

  # Books relationship
  has_many :entries

end
