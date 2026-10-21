class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @companies = @companies.where(hires_juniors: true) if params[:hires_juniors].present?
    @companies = @companies.where(visa_sponsorship: true) if params[:visa_sponsorship].present?
    @companies = @companies.where(english_ok: true) if params[:english_ok].present?
    @companies = @companies.where(japanese_level: params[:japanese_level]) if params[:japanese_level].present?
    @companies = @companies.where(remote_policy: params[:remote_policy]) if params[:remote_policy].present?
    @companies = @companies.where(city: params[:city]) if params[:city].present?

    if params[:query].present?
      term = "%#{params[:query].downcase}%"
      @companies = @companies.where(
        "LOWER(name) LIKE :t OR LOWER(industry) LIKE :t OR LOWER(tech_stack) LIKE :t", t: term
      )
    end

    @companies = @companies.order(:name)
    @cities = Company.distinct.order(:city).pluck(:city).compact

    @query = params[:query]
    @hires_juniors = params[:hires_juniors].present?
    @visa_sponsorship = params[:visa_sponsorship].present?
    @english_ok = params[:english_ok].present?
    @japanese_level = params[:japanese_level]
    @remote_policy = params[:remote_policy]
    @city = params[:city]
  end

  def show
    @company = Company.find(params[:id])
  end
end
