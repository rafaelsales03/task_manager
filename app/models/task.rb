class Task < ApplicationRecord
  validates :title, presence: true
  validates :due_date, presence: true
  validate :due_date_in_future

  private

  def due_date_in_future
    errors.add(:due_date, "deve ser uma data futura") if due_date.present? && due_date <= Date.today
  end
end
