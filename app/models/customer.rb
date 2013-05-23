class Customer < ActiveRecord::Base
  before_destroy :delete_reservations

  attr_accessible :name

  validates :name, presence: true

  has_many :reservations
  has_many :customers, through: :reservations


  private
  def delete_reservations
    self.reservations.destroy_all
  end
end
