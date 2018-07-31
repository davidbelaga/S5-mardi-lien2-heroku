class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, format: { without: /\s/ }
end
