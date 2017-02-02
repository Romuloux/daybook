class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Book relationship
  has_one :book

  after_create :create_book

  def create_book
    if self.book.nil?
      Book.create!(user_id: self.id)
    end
  end

end
