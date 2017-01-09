class Reader < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

  def record_read(params)
    unless read = Reader.find_by(url: params[:url])
      read = Reader.new(params)
      return read if read.save
    else
      return read if read.update(counter: read.counter += 1)
    end
    false
  end
end
