class ImagesController < ApplicationController
  #before_action :set_image, only: %i[show edit update]
  before_action :has_session, only: [:new]
  def index
    @images = Image.all
  end

  def has_session
    if user_signed_in?
    else
      redirect_to new_user_session_path,
                  notice: 'Для добавления фото нужно авторизироваться'
    end
  end

  def show; end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to indeximage_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @image.update_attributes(image_params)
      redirect_to photos_path(@image)
    else
      render :edit
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :image)
  end

  #def set_image
   # @image = Image.find_by_id(params[:id])
  #end
end
