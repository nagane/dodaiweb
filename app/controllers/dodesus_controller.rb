class DodesusController < ApplicationController
  before_action :set_dodesu, only: [:show, :edit, :update, :destroy]

  def imageupload 
    @dodesu = Dodesu.new
  end

  def imageupload_process
    @dodesu = Dodesu.find(params[:id])
    if @dodesu.update(params.require(:dodesu).permit(:data))
      render text: 'success!'
    else
      render text: @dodesu.errors.full_messages[0]
    end
  end

  # GET /dodesus
  # GET /dodesus.json
  def index
    @dodesus = Dodesu.all
  end

  # GET /dodesus/1
  # GET /dodesus/1.json
  def show
  end

  # GET /dodesus/new
  def new
    @dodesu = Dodesu.new
  end

  # GET /dodesus/1/edit
  def edit
  end

  # POST /dodesus
  # POST /dodesus.json
  def create
    @dodesu = Dodesu.new(dodesu_params)

    respond_to do |format|
      if @dodesu.save
        format.html { redirect_to @dodesu, notice: 'Dodesu was successfully created.' }
        format.json { render :show, status: :created, location: @dodesu }
      else
        format.html { render :new }
        format.json { render json: @dodesu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dodesus/1
  # PATCH/PUT /dodesus/1.json
  def update
    respond_to do |format|
      if @dodesu.update(dodesu_params)
        format.html { redirect_to @dodesu, notice: 'Dodesu was successfully updated.' }
        format.json { render :show, status: :ok, location: @dodesu }
      else
        format.html { render :edit }
        format.json { render json: @dodesu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dodesus/1
  # DELETE /dodesus/1.json
  def destroy
    @dodesu.destroy
    respond_to do |format|
      format.html { redirect_to dodesus_url, notice: 'Dodesu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dodesu
      @dodesu = Dodesu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dodesu_params
      params.require(:dodesu).permit(:name, :image)
    end
end
