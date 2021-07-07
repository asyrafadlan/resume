class HomeController < ApplicationController
  def index
  @user = User.preload([:educations, :experiences, :curiculars]).first
  # @educations = Education.all
   #@user.experiences = Experience.all
   #@curiculars = Curicular.all
  end
end
