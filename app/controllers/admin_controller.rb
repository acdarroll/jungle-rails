class AdminController < ApplicationController

  before_action :admin_check

  private
    # HTTP Basic auth (used for admin routes)
    def admin_check
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['AUTHENTICATE_USERNAME'] &&
        password == ENV['AUTHENTICATE_PASSWORD']
      end
    end

end