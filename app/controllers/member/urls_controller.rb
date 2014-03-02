class Member::UrlsController < Member::ApplicationController
  before_filter :authenticate_user!
  before_filter :set_user
  before_filter :set_url, only: [:show]

  def index
    @urls =@user.urls
    @url = Url.new
  end

  def show
  end

  private
  def set_user
    @user = current_user unless current_user.nil?
  end

  def set_url
    @url = Url.find_by_key(params[:key])
  end
end
