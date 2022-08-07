class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :about, :contact, :privacy]

  def index
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def course
  end
  
end
