class Event < ApplicationRecord
  belongs_to :author
  has_many :tickets
end
