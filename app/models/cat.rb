class Cat < ActiveRecord::Base
  validates :name, :presence => true
  validates :sex, :presence => true, inclusion: %w(M F)
  validates :color, :presence => true, inclusion: COLORS

  COLORS = %w(black gray white calico tabby)
end
