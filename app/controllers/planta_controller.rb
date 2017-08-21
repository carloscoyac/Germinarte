class PlantaController < ApplicationController
  before_action :set_plantum, only: [:show, :edit, :update, :destroy]

  # GET /planta
  # GET /planta.json
  def index
    @planta = Plantum.all
  end

  # GET /planta/1
  # GET /planta/1.json
  def show
  end

  # GET /planta/new
  def new
    @plantum = Plantum.new
  end

  # GET /planta/1/edit
  def edit
  end

  # POST /planta
  # POST /planta.json
  def create
    @plantum = Plantum.new(plantum_params)

    respond_to do |format|
      if @plantum.save
        format.html { redirect_to @plantum, notice: 'Plantum was successfully created.' }
        format.json { render :show, status: :created, location: @plantum }
      else
        format.html { render :new }
        format.json { render json: @plantum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planta/1
  # PATCH/PUT /planta/1.json
  def update
    respond_to do |format|
      if @plantum.update(plantum_params)
        format.html { redirect_to @plantum, notice: 'Plantum was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantum }
      else
        format.html { render :edit }
        format.json { render json: @plantum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planta/1
  # DELETE /planta/1.json
  def destroy
    @plantum.destroy
    respond_to do |format|
      format.html { redirect_to planta_url, notice: 'Plantum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantum
      @plantum = Plantum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantum_params
      params.require(:plantum).permit(:familia, :genero, :nombre, :germinaciondias, :altura, :precio)
    end
end
