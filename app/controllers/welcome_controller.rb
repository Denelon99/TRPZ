# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    render 'welcome/index'
  end
end
