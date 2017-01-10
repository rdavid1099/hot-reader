class Api::V1::ReaderController < ApplicationController
  def create
    read = Reader.new
    if read.record_read(read_params)
      render json: {
        status: (read.new_entry? ? 201 : 202),
        message: (read.new_entry? ? 'Successfully created read' : 'Successfully updated read')
      }.to_json
    else
      render json: {
        status: 400,
        message: "Read not saved",
      }.to_json
    end
  end

  def index
    @reads = Reader.top_ten_reads
    render json: @reads
  end

  private
    def read_params
      params.permit(:title, :url)
    end
end
