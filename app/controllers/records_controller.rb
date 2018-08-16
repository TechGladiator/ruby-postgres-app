class RecordsController < ApplicationController
  def create
    @import = Import.find(params[:import_id])
    @record = @import.records.create(record_params)
    redirect_to @import
  end

  private
    def record_params
      params.require(:record).permit(:name, :address, :address_2, :city, :state, :zip, :purpose, :property_owner, :creation_date, :lat, :long)
    end
end
