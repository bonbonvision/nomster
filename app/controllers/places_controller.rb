class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @places = Place.all
    @places = Place.paginate(:per_page => 5, :page => params[:page]).order('created_at DESC')
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pins }
    end
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update_attributes(place_params)
    redirect_to root_path
  end

  private

  def place_params
   params.require(:place).permit(:name, :description, :address)
  end

end
