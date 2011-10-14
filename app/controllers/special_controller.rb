class SpecialController < ApplicationController
  def home
    return redirect_to new_user_path
  end
end
