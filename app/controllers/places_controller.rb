class PlacesController < ApplicationController
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

end

