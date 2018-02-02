class GeocodersController < ApplicationController
  before_action :set_geocoder, only: [:show, :edit, :update, :destroy]

  # GET /geocoders
  # GET /geocoders.json
  def index
    @geocoders = Geocoder.all
  end

  # GET /geocoders/1
  # GET /geocoders/1.json
  def show
  end

  # GET /geocoders/new
  def new
    @geocoder = Geocoder.new
  end

  # GET /geocoders/1/edit
  def edit
  end

  # POST /geocoders
  # POST /geocoders.json
  def create
    @geocoder = Geocoder.new(geocoder_params)

    respond_to do |format|
      if @geocoder.save
        format.html { redirect_to @geocoder, notice: 'Geocoder was successfully created.' }
        format.json { render :show, status: :created, location: @geocoder }
      else
        format.html { render :new }
        format.json { render json: @geocoder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geocoders/1
  # PATCH/PUT /geocoders/1.json
  def update
    respond_to do |format|
      if @geocoder.update(geocoder_params)
        format.html { redirect_to @geocoder, notice: 'Geocoder was successfully updated.' }
        format.json { render :show, status: :ok, location: @geocoder }
      else
        format.html { render :edit }
        format.json { render json: @geocoder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geocoders/1
  # DELETE /geocoders/1.json
  def destroy
    @geocoder.destroy
    respond_to do |format|
      format.html { redirect_to geocoders_url, notice: 'Geocoder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geocoder
      @geocoder = Geocoder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geocoder_params
      params.require(:geocoder).permit(:address, :latitude, :longitude)
    end
end
