class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save
    respond_to do |format|
      format.json { render json: { image_id: @image.id, thumb: @image.info_image.url(:thumb), small: @image.info_image.url(:small), med: @image.info_image.url(:med) } }
    end
  end

  def update
    @image = Image.find(params[:id])
    respond_to do |format|
      @image.update(image_params)
      format.json { render json: { image_id: @image.id, thumb: @image.info_image.url(:thumb), small: @image.info_image.url(:small), med: @image.info_image.url(:med) } }
    end
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    respond_to do |format|
      format.json { render json: { status: :ok } }
    end
  end

  private

  def image_params
    params.require(:image).permit(:id, :title, :alt, :info_image, :info_id)
  end
end
