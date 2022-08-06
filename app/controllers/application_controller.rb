class ApplicationController < ActionController::Base
  before_action :set_skip_links
  before_action :authenticate_user! 
  before_action :set_current_account
  set_current_tenant_by_subdomain_or_domain(:account, :subdomain, :domain)
  
  private

  def set_current_account
    return unless current_user.present?
    current_account = current_user.account
    ActsAsTenant.current_tenant = current_account
  end

  def set_skip_links
    @skip_links = {main: "Skip to main content"}
  end
end
