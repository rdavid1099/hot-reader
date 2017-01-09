class Read < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

  def record_read(params)

  end
end
