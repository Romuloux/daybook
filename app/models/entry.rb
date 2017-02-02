class Entry < ApplicationRecord

  # Book relationship
  belongs_to :book

  # Validations
  validates :title, presence: true

  def self.date_desc
    order(created_at: :asc)
  end

end
