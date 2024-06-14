class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end 
 
  def new
    @country = Country.new 
  end
  def create
    @country = Country.new(param_country)
    if @country.save
      flash[:notice] = "Data created successfully!"
      redirect_to countries_path
    else 
      render 'new'
    end
  end
  def show
    @country = Country.find(params[:id])
  end
  def edit
    @country = Country.find(params[:id])
  end
  def update
    @country = Country.find(params[:id])
    @country.update(param_country)
    redirect_to countries_path
  end
  def destroy
    @country = Country.find(params[:id])
    @country.destroy 
    redirect_to countries_path
  end 
  private
    def param_country
      params.require(:country).permit(:name, :capital_city, :population)
    end
end
