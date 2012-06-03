class HomeController < ApplicationController
  def index
    @users = User.all
    @reported_dangers = ReportedDanger.all
  end
  
  def home
    @user = current_user
  end
end
