class UrlsController < ApplicationController
  before_filter :set_url, except: [:new, :create]

  def show
    # referrer, ip address, location
    @url.click_ids = @url.click_ids + [Click.create().id]
    #redirect_to @url.ref
  end

  def to_param
    key
  end

  def new
  end

  def create
    @url = Url.new(params_user)
    if @url.save
      @ref_url = @url.get_url request
      render 'success'
    else
      render 'new'
    end
  end

  private

 def set_url
   @url = Url.find_by_key(params[:key])
 end

  def params_user
    params[:url].permit(:ref, :user_id)
  end
end