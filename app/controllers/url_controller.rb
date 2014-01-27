class UrlController < ApplicationController
  def show
    @url = Url.find_by_key(params[:key])
    redirect_to @url.ref
  end

  def to_param
    key
  end

  def new
  end

  def create
    @url = Url.new(params[:url].permit(:ref))
    if @url.save
      @ref_url = @url.get_url request
      render 'success'
    else
      render 'new'
    end
  end
end