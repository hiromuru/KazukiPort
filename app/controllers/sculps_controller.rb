class SculpsController < ApplicationController
  before_action :set_sculp, only: [:show, :edit, :update, :destroy]

  # GET /sculps
  # GET /sculps.json
  def index
    @sculps = Sculp.all
    @sculp = Sculp.new
    @sculp1 = Sculp.where(category: 1)
    @sculp2 = Sculp.where(category: 2)
    @sculp3 = Sculp.where(category: 3)
  end
  
  def category
    @categoryno = params[ :id]
    @sculps = Sculp.all
    @sculp = Sculp.new
    @sculpw = Sculp.where(category: params[ :id])
  end
  
  # GET /sculps/1
  # GET /sculps/1.json
  def show
  end

  # GET /sculps/new
  def new
    @sculp = Sculp.new
  end

  # GET /sculps/1/edit
  def edit
  end

  # POST /sculps
  # POST /sculps.json
  def create
    @sculp = Sculp.new(sculp_params)

    respond_to do |format|
      if @sculp.save
        format.html { redirect_to sculps_url }
        format.json { render action: 'show', status: :created, location: @sculp }
      else
        format.html { render action: 'new' }
        format.json { render json: @sculp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sculps/1
  # PATCH/PUT /sculps/1.json
  def update
    respond_to do |format|
      if @sculp.update(sculp_params)
        format.html { redirect_to sculps_url }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sculp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sculps/1
  # DELETE /sculps/1.json
  def destroy
    @sculp.destroy
    respond_to do |format|
      format.html { redirect_to sculps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sculp
      @sculp = Sculp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sculp_params
      params.require(:sculp).permit(:title, :wide, :depth, :high,
                                         :madein, :image, :category)
    end
end
