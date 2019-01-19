class StaticPagesController < ApplicationController
  def home
    if (@user == nil) then @user = User.new end
  end

  def contact
  end

  def privacy 
  end

end
