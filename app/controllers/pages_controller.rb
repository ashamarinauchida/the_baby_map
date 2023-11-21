class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def our_story
  end

  def contact
  end
end
