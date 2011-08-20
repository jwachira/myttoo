class SpecialController < ApplicationController
  def home
    @users = User.all
  end
end
