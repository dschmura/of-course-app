class ApplicationController < ActionController::Base
  before_action :set_skip_links
  before_action :authenticate_user! 

  private

  def set_skip_links
    @skip_links = {main: "Skip to main content"}
  end
end
