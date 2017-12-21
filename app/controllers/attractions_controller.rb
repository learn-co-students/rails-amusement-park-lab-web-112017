class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
    @ride = Ride.new(attraction_id: @attraction.id)
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.valid?
      @attraction.save
      redirect_to attraction_path(@attraction)
    else
      flash[:error] = @attraction.errors.full_messages
      render :new
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])

    if @attraction.update(attraction_params)
      redirect_to attraction_path(@attraction)
    else
      flash[:error] = @attraction.errors.full_messages
      render :new
    end
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
    redirect_to attractions_path
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :happiness_rating, :min_height, :nausea_rating)
  end
end
