class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def about
  end

  def pricing
  end
end
