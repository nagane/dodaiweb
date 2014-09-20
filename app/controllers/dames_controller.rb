class DamesController < ApplicationController
  before_action :set_dame, only: [:show, :edit, :update, :destroy]

  # GET /dames
  # GET /dames.json
  def index
    @dames = Dame.all
  end

  # GET /dames/1
  # GET /dames/1.json
  def show
  end

  # GET /dames/new
  def new
    @dame = Dame.new
  end

  # GET /dames/1/edit
  def edit
  end

  # POST /dames
  # POST /dames.json
  def create
    @dame = Dame.new(dame_params)

    respond_to do |format|
      if @dame.save
        format.html { redirect_to @dame, notice: 'Dame was successfully created.' }
        format.json { render :show, status: :created, location: @dame }
      else
        format.html { render :new }
        format.json { render json: @dame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dames/1
  # PATCH/PUT /dames/1.json
  def update
    respond_to do |format|
      if @dame.update(dame_params)
        format.html { redirect_to @dame, notice: 'Dame was successfully updated.' }
        format.json { render :show, status: :ok, location: @dame }
      else
        format.html { render :edit }
        format.json { render json: @dame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dames/1
  # DELETE /dames/1.json
  def destroy
    @dame.destroy
    respond_to do |format|
      format.html { redirect_to dames_url, notice: 'Dame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dame
      @dame = Dame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dame_params
      params.require(:dame).permit(:image, :image_content_type)
    end
end
