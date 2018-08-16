class RecordsController < ApplicationController
  before_action :set_import

  def create
    @record = @import.records.create(record_params)
    redirect_to @import
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to @import
  end

  private
    def record_params
      params.require(:record).permit(:name, :address, :address_2, :city, :state, :zip, :purpose, :property_owner, :creation_date, :lat, :long)
    end

    def set_import
      @import = Import.find(params[:import_id])
    end
end
