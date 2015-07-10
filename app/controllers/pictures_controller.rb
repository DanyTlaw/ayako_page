class PicturesController < ApplicationController
  before_filter :find_theme, except: [:shop]

  # GET /pictures
  # GET /pictures.json
  def index
    @unfilteredPictures = @theme.pictures
    @pictures = Picture.getPictures(@unfilteredPictures)
  end

  def shop
    @pictures = Picture.where(for_sale: true)
  end
  # GET /pictures/1
  # GET /pictures/1.json
  def show
    @picture = @theme.pictures.find(params[:id])
    @verspictures = Picture.where(name: @picture.name)
  end

  # GET /pictures/new
  def new
    @picture = @theme.pictures.build
  end

  # GET /pictures/1/edit
  def edit
    @picture = @theme.pictures.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = @theme.pictures.build(picture_params)


        if @picture.save
          redirect_to [@theme, @picture], notice: 'Comment was successfully created.'
        else
          render action: "new"
        end
    
  end

  # PATCH/PUT /pictures/1
  # PATCH/PUT /pictures/1.json
  def update
    @picture = @theme.pictures.find(params[:id])
     if @picture.update_attributes(picture_params)
        redirect_to [@theme, @picture], notice: 'Comment was successfully updated.'
      else
        render action: "edit"
      end
    
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = @theme.pictures.find(params[:id])
    @picture.destroy

    redirect_to theme_pictures_path(@theme)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_theme
      @theme = Theme.find(params[:theme_id])
    end

    def picture_params
      params.require(:picture).permit(:name, :count, :url)
    end
end
