class SpecialController < ApplicationController
  def home
    @user = User.new
  end
end
