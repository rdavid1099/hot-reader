class Reader < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

  def record_read(params)
    unless read = Reader.find_by(url: params[:url])
      Reader.create(params)
    else
      read.update(count: count += 1)
    end
  end
end
