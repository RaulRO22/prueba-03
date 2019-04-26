class AplicacionsController < ApplicationController
  before_action :set_aplicacion, only: [:show, :edit, :update, :destroy]

  # GET /aplicacions
  # GET /aplicacions.json
  def index
    @aplicacions = Aplicacion.all
  end

  # GET /aplicacions/1
  # GET /aplicacions/1.json
  def show
  end

  # GET /aplicacions/new
  def new
    @aplicacion = Aplicacion.new
  end

  # GET /aplicacions/1/edit
  def edit
  end

  # POST /aplicacions
  # POST /aplicacions.json
  def create
    @aplicacion = Aplicacion.new(aplicacion_params)

    respond_to do |format|
      if @aplicacion.save
        format.html { redirect_to @aplicacion, notice: 'Aplicacion was successfully created.' }
        format.json { render :show, status: :created, location: @aplicacion }
      else
        format.html { render :new }
        format.json { render json: @aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplicacions/1
  # PATCH/PUT /aplicacions/1.json
  def update
    respond_to do |format|
      if @aplicacion.update(aplicacion_params)
        format.html { redirect_to @aplicacion, notice: 'Aplicacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @aplicacion }
      else
        format.html { render :edit }
        format.json { render json: @aplicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicacions/1
  # DELETE /aplicacions/1.json
  def destroy
    @aplicacion.destroy
    respond_to do |format|
      format.html { redirect_to aplicacions_url, notice: 'Aplicacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplicacion
      @aplicacion = Aplicacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aplicacion_params
      params.require(:aplicacion).permit(:nombre, :descripcion)
    end
end
