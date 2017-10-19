class RegisteredApplication < ActiveRecord::Base
  has_many :events
  validates :name, length: { minimum: 3, maximum: 20 }, presence: true
  validates :url, length: { minimum: 5 }, presence: true
end
