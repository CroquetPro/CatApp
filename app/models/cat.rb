

class Cat < ActiveRecord::Base
  COLORS = %w(black gray white calico tabby)

  validates :name, :presence => true
  validates :sex, :presence => true, inclusion: %w(M F)
  validates :color, :presence => true, inclusion: COLORS

  has_many :cat_rental_requests,
    dependent: :destroy,
    foreign_key: :cat_id,
    primary_key: :id,
    class_name: "CatRentalRequest"

end
