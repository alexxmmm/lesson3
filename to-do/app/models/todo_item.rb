class TodoItem < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4 }
  validates :priority , presence: true, :inclusion => 1..5
  scope :priority_lvl, -> (priority) { where(:priority => priority) }

  enum status: [ :active, :closed, :resolved ]
end
