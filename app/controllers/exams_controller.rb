class ExamsController < ApplicationController
  before_action :authenticate_student!, except: [:index]
  def index
  end
end
