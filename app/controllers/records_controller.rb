class RecordsController < ApplicationController
  before_action :set_import

  before_action :set_record, only: [:edit, :update, :destroy]

  def create
    @record = @import.records.create(record_params)
    redirect_to @import
  end

  def edit
  end

  def update
    @record.update(record_params)
    redirect_to @import
  end

  def destroy
    @record.destroy
    redirect_to @import
  end

  private
    def record_params
      params.require(:record).permit(:name, :address, :address_2, :city, :state, :zip, :purpose, :property_owner, :creation_date, :lat, :long)
    end

    def set_import
      @import = Import.find(params[:import_id])
    end

    def set_record
      @record = Record.find(params[:id])
    end
end
