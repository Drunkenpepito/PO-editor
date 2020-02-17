class MasterServicesController < ApplicationController
  def index
    @master_services = MasterService.all
  end

  def show
    @master_service = MasterService.find(params[:id])
  end

  def new
    # on lui passe juste une variable d'instance qu'il a besoin dans form for
    @master_service = MasterService.new
  end

  def create
    @master_service = MasterService.new(master_service_strong_params)
    if @master_service.save
      redirect_to master_service_path(@master_service)
    else
      render :new
    end
  end

  def edit
    @master_service = MasterService.find(params[:id])
  end

  def update
    @master_service = MasterService.find(params[:id])
    if @master_service.update(master_service_strong_params)
      redirect_to master_service_path(@master_service)
    else
      render :edit
    end
  end

  def destroy
    @master_service = MasterService.find(params[:id])
    @master_service.destroy
    redirect_to master_services
    _path
  end

  private

  def master_service_strong_params
    params.require(:master_service).permit(:name, :photo)
  end
end
