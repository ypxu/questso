class CompanyController < ApplicationController

  def view
    @company = Company.find_by_name(params[:name])
    render 'view'
  end

  def edit
    @company = Company.find_by_name(params[:name])
    render 'edit'
  end

end
