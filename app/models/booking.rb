class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :apartment

  validates :check_in, :check_out, presence: true
  validate :check_out_after_check_in

  private

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    if check_out < check_in
      errors.add(:check_out, "must be after the start date")
    end
 end
end
