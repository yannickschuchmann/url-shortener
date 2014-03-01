class Member::UrlsController < Member::ApplicationController
  before_filter :authenticate_user!
  before_filter :set_user

  def index
    @urls =@user.urls
    @url = Url.new
  end

  private
  def set_user
    @user = current_user unless current_user.nil?
  end
end
