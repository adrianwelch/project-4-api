class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :update, :destroy]

  # GET /legs
  def index
    @legs = Leg.all

    render json: @legs
  end

  # GET /legs/1
  def show
    render json: @leg
  end

  # POST /legs
  def create
    # @leg = Leg.new(leg_params)
    @leg = Leg.new(Uploader.upload(leg_params))

    if @leg.save
      render json: @leg, status: :created, location: @leg
    else
      render json: @leg.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /legs/1
  def update
    return render json: { errors: ["Unauthorized"] } if @leg.trip.user != current_user
    if Leg.new(Uploader.upload(leg_params))
      render json: @leg
    else
      render json: @leg.errors, status: :unprocessable_entity
    end
  end

  # DELETE /legs/1
  def destroy
    return render json: { errors: ["Unauthorized"] } if @leg.trip.user != current_user
    @leg.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leg_params
      params.require(:leg).permit(:trip_id, :date, :location, :lat, :lng, :description, :base64)
    end
end
