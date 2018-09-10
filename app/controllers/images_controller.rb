class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save

    respond_to do |format|
      format.json { render json: { url: @image.info_image.url(:med), image_id: @image.id } }
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
    params.require(:image).permit(:info_image)
  end
end
