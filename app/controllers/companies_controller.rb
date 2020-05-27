class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
    @company
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end
end
