class AssetsController < ApplicationController
  
  def index
    @assets = Asset.all.paginate(page: params[:page], per_page: 24)
  end

  def new
    @asset = Asset.new
  end

  def create
    if Asset.create(asset_params)
      redirect_to assets_path, notice: "Your Asset is added"
    else
      redirect_to :back, notice: "There is some error"
    end
  end

  def order
    #Enqueue your job here
  end

  private

  def asset_params
    params.require(:asset).permit!
  end

end
