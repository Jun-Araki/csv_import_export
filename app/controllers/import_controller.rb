class ImportController < ApplicationController
  def create
    User.import_csv(params[:file]) if params[:file]
    redirect_to users_path
  end
end
