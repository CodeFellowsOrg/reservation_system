class Customer < ActiveRecord::Base

  attr_accessible :name

  validates :name, presence: true

  has_many :reservations
  has_many :customers, through: :reservations, dependent: :destroy

end
