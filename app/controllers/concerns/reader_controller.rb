class Api::V1::ReaderController
  def create
    read = Read.new
    if read.record_read(read_params)

    else

    end
  end

  private
    def read_params
      params.permit(:title, :url)
    end
end
