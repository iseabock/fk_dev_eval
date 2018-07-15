class FormatCsvController < ApplicationController

  def index

  end

  def create
    columns    = params[:columns].to_i
    csv_data   = params[:csv_string].split(',')

    begin
      @column_arrays = Services::CsvFormatter.new(csv_data, columns).format_csv
      @columns       = columns
    rescue Exception => ex
      flash[:warning] = ex.message
    end

    render :index
  end
end
