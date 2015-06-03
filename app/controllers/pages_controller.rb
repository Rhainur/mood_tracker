class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def record_mood
    current_user.moods.create(mood: params[:mood])
    redirect_to root_path
  end
end
