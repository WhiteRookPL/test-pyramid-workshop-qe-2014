class Task < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  belongs_to :list

  before_save :update_date

  def update_date()
    self.date ||= Date.today

    # All 'before_*' methods have to return true if they have to be applied.
    return true
  end

  def close!()
    self.closed = true
  end
end