class LoactionsController < ApplicationController
  before_action :set_loaction, only: [:show, :edit, :update, :destroy]

  # GET /loactions
  # GET /loactions.json
  def index
    @loactions = Loaction.all
  end

  # GET /loactions/1
  # GET /loactions/1.json
  def show
  end

  # GET /loactions/new
  def new
    @loaction = Loaction.new
  end

  # GET /loactions/1/edit
  def edit
  end

  # POST /loactions
  # POST /loactions.json
  def create
    @loaction = Loaction.new(loaction_params)

    respond_to do |format|
      if @loaction.save
        format.html { redirect_to @loaction, notice: 'Loaction was successfully created.' }
        format.json { render :show, status: :created, location: @loaction }
      else
        format.html { render :new }
        format.json { render json: @loaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loactions/1
  # PATCH/PUT /loactions/1.json
  def update
    respond_to do |format|
      if @loaction.update(loaction_params)
        format.html { redirect_to @loaction, notice: 'Loaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @loaction }
      else
        format.html { render :edit }
        format.json { render json: @loaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loactions/1
  # DELETE /loactions/1.json
  def destroy
    @loaction.destroy
    respond_to do |format|
      format.html { redirect_to loactions_url, notice: 'Loaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaction
      @loaction = Loaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loaction_params
      params.require(:loaction).permit(:address, :latitude, :longitude)
    end
end
