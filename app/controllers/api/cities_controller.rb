class Api::CitiesController < ApplicationController
  before_action :set_api_city, only: [:show, :update, :destroy]

  # GET /api/cities
  # GET /api/cities.json
  def index
    @api_cities = Api::City.all

    render json: @api_cities
  end

  # GET /api/cities/1
  # GET /api/cities/1.json
  def show
    render json: @api_city
  end

  # POST /api/cities
  # POST /api/cities.json
  def create
    @api_city = Api::City.new(api_city_params)

    if @api_city.save
      render json: @api_city, status: :created, location: @api_city
    else
      render json: @api_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/cities/1
  # PATCH/PUT /api/cities/1.json
  def update
    @api_city = Api::City.find(params[:id])

    if @api_city.update(api_city_params)
      head :no_content
    else
      render json: @api_city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/cities/1
  # DELETE /api/cities/1.json
  def destroy
    @api_city.destroy

    head :no_content
  end

  private

    def set_api_city
      @api_city = Api::City.find(params[:id])
    end

    def api_city_params
      params.require(:api_city).permit(:name)
    end
end
