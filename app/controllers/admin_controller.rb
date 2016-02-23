class AdminController < ApplicationController

  before_action :authenticate_user!, except: [:index,:show]
  include ActionView::Helpers::NumberHelper
	
  def index
	end
	
end