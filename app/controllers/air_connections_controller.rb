class AirConnectionsController < ApplicationController
  before_action :set_air_connection, only: [:show, :edit, :update, :destroy]

  # GET /air_connections
  # GET /air_connections.json
  def index
    @air_connections = AirConnection.all
  end

  # GET /air_connections/1
  # GET /air_connections/1.json
  def show
  end

  # GET /air_connections/new
  def new
    @air_connection = AirConnection.new
  end

  # GET /air_connections/1/edit
  def edit
  end

  # POST /air_connections
  # POST /air_connections.json
  def create
    @air_connection = AirConnection.new(air_connection_params)

    respond_to do |format|
      if @air_connection.save
        format.html { redirect_to @air_connection, notice: "Air connection was successfully created." }
        format.json { render :show, status: :created, location: @air_connection }
      else
        format.html { render :new }
        format.json { render json: @air_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_connections/1
  # PATCH/PUT /air_connections/1.json
  def update
    respond_to do |format|
      if @air_connection.update(air_connection_params)
        format.html { redirect_to @air_connection, notice: "Air connection was successfully updated." }
        format.json { render :show, status: :ok, location: @air_connection }
      else
        format.html { render :edit }
        format.json { render json: @air_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_connections/1
  # DELETE /air_connections/1.json
  def destroy
    @air_connection.destroy
    respond_to do |format|
      format.html { redirect_to air_connections_url, notice: "Air connection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_air_connection
    @air_connection = AirConnection.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def air_connection_params
    params.require(:air_connection).permit(:origin_airport_id, :destination_airport_id, :aircraft, :distance, :segment_number, :economy_seats, :buisness_seats, :first_class_seats)
  end
end
