class Author < ApplicationRecord
  has_many :albums
  has_many :events

  has_many :tickets

  has_secure_password
end
