class ReadsController < ApplicationController
  def index
    @reads = Reader.top_ten_reads
  end
end
