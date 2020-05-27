class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
    @company
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(companies_params)
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def companies_params
    params.require(:company).permit(:name, :description, :start_date, :country)
  end
end
