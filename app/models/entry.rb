class Entry < ApplicationRecord

  # Book relationship
  belongs_to :book

  def self.date_desc
    order(created_at: :asc)
  end

end
