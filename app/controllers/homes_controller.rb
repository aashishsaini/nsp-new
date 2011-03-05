class HomesController < ApplicationController

    
  def index
    @user_session = UserSession.new
  end

  def nanny_share
     @user_session = UserSession.new
  end
  def about
    @user_session = UserSession.new
  end
  def faq
  @user_session = UserSession.new    
  end
end
