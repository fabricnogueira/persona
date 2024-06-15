class ApplicationController < ActionController::Base
    before_action :redirect_if_authenticated

    protected
  
    def after_sign_in_path_for(resource)
    principal_path
    end

    private

    def redirect_if_authenticated
      if user_signed_in? && request.path == root_path
        redirect_to principal_path
      end
    end
  end
  