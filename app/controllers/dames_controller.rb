class DamesController < ApplicationController
  before_action :set_dame, only: [:show, :edit, :update, :destroy, :image,:image_full,:thumbnail_image]

  def resize_image_fix
    img = Magick::Image.from_blob(@dame.image).shift
    @dame.image = img.resize_to_fill!(250,250).to_blob
  end

  def resize_image_rate
    img = Magick::Image.from_blob(@dame.image).shift
    ration = 700.0 / img.columns
    resized = img.resize(ration)
    @dame.image = resized.to_blob
  end

  # 詳細画面用
  def image
    resize_image_rate
    send_data(@dame.image, type: @dame.image_content_type, disposition: :inline)
  end

  # サムネイル表示用
  def thumbnail_image
    resize_image_fix
    send_data(@dame.image, type: @dame.image_content_type, disposition: :inline)
  end

  # フルサイズ用
  def image_full
    send_data(@dame.image, type: @dame.image_content_type, disposition: :inline)
  end

  def rdmimg
    @dame = Dame.all
    @random_display = @dame.sample
    send_data(@random_display.image, type: @random_display.image_content_type, disposition: :inline)
  end

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
    @dame.image = params[:dame][:image].read
    @dame.image_content_type = params[:dame][:image].content_type

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
      params.require(:dame).permit(:id)
    end
end
