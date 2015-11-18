

class Cat < ActiveRecord::Base
  COLORS = %w(black gray white calico tabby)

  validates :name, :presence => true
  validates :sex, :presence => true, inclusion: %w(M F)
  validates :color, :presence => true, inclusion: COLORS



end
