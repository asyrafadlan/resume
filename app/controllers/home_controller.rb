class HomeController < ApplicationController
  def index
  @user = User.first
  @educations = Education.all
  @experiences = Experience.all
  @curiculars = Curicular.all
  end
end
