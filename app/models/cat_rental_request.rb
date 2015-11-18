class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: %w(PENDING APPROVED)
  validate :cannot_overlap_approved_requests

  belongs_to :cat,
  foreign_key: :cat_id,
  primary_key: :id,
  class_name: "Cat"

  private

  def overlapping_requests
    CatRentalRequest.all.select do |request|
      next if request == self
      (self.start_date - request.end_date) * (request.start_date - self.end_date) >= 0
    end
  end

  def overlapping_approved_requests
    overlapping_requests.select {|request| request.status = "APPROVED"}
  end

  def cannot_overlap_approved_requests
    errors[:overlap] << "overlapping dates" if overlapping_approved_requests
  end

end
