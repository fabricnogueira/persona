# frozen_string_literal: true

# This is the AuthsController class
class AuthsController < ApplicationController
  def index
    @auths = Auth.all
  end
end
