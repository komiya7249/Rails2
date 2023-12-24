class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :room

  validates :check_in_at, presence:true
  validates :check_out_at, presence:true
  validates :persons, presence:true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  validate :today_after
  validate :check_out_at_after

  def today_after
    errors.add(:check_in_at,"は本日以降の日付を選択してください") if check_in_at.nil? || check_in_at < Date.today
  end
  
  def check_out_at_after
    errors.add(:check_out_at,"はチェックイン日より後の日付を選択してください") if check_in_at.nil? || check_out_at.nil? || check_out_at < check_in_at
  end 

end
