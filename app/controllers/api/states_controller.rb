class Api::StatesController < ApplicationController
  before_action :set_api_state, only: [:show, :update, :destroy]

  # GET /api/states
  # GET /api/states.json
  def index
    @api_states = Api::State.all
  end

  # GET /api/states/1
  # GET /api/states/1.json
  def show
  end

  # POST /api/states
  # POST /api/states.json
  def create
    @api_state = Api::State.new(api_state_params)

    if @api_state.save
      render json: @api_state, status: :created, location: @api_state
    else
      render json: @api_state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/states/1
  # PATCH/PUT /api/states/1.json
  def update
    @api_state = Api::State.find(params[:id])

    if @api_state.update(api_state_params)
      head :no_content
    else
      render json: @api_state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/states/1
  # DELETE /api/states/1.json
  def destroy
    @api_state.destroy

    head :no_content
  end

  private

    def set_api_state
      @api_state = Api::State.find(params[:id])
    end

    def api_state_params
      params.require(:api_state).permit(:name)
    end
end
