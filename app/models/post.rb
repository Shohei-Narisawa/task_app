class Post < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :title, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validate :date_before_end
  
  def date_before_end
    errors.add(:end_at, "は今日以降の日付で選択してください" ) if end_at.nil? || end_at < Date.today
  end
end
