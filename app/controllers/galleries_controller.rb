class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_action :deny_access, only: [:new, :edit, :create, :update, :destroy]

  # POST /galleries/show_images?id=1
  def show_images
    @gallery= Gallery.find(params[:id])
    @cover_urls = []
    @thumb_urls = []
    @original_urls = []
    @gallery.images.each do |image|
      if image.gallery_cover == true
        if browser.device.mobile?
          @cover_urls.unshift(image.gallery_image.url(:mobile_cover))
        elsif browser.device.tablet?
          @cover_urls.unshift(image.gallery_image.url(:tablet_cover))
        else
          @cover_urls.unshift(image.gallery_image.url(:cover))
        end
        @thumb_urls.unshift(image.gallery_image.url(:thumb))
        @original_urls.unshift(image.gallery_image.url(:original))
      else
        if browser.device.mobile?
          @cover_urls.push(image.gallery_image.url(:mobile_cover))
        elsif browser.device.tablet?
          @cover_urls.push(image.gallery_image.url(:tablet_cover))
        else
          @cover_urls.push(image.gallery_image.url(:cover))
        end
        @thumb_urls.push(image.gallery_image.url(:thumb))
        @original_urls.push(image.gallery_image.url(:original))
      end
    end
    respond_to do |format|
      format.js {render :layout => false}
    end
  end

  # GET /galleries
  # GET /galleries.json
  def index
    @title =       "Фотогалерея наших работ - частные мастера"
    @description = "Фото готовых работ по ремонту квартир в Москве и МО, которые выполнили частные мастера нашей бригады"
    @keywords =    "фото ремонт квартир"

    @galleries = Gallery.all
    @main_gallery_thumb_urls = []
    @galleries.each do |gallery|
      image = gallery.images.find_by_gallery_cover(true)
      @main_gallery_thumb_urls.push(image.gallery_image.url(:thumb))
    end
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
    @gallery.images.build
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
        format.json { render :show, status: :created, location: @gallery }
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:title, :alt,
        images_attributes: [:id, :title, :alt, :gallery_image, :gallery_cover, :gallery_id, :_destroy]
      )
    end

end
