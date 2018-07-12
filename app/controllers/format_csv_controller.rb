class FormatCsvController < ApplicationController

  def index

  end

  def create
    columns    = params[:columns].to_i
    csv_string = params[:csv_string].split(',')

    @column_arrays = Services::CsvFormatter.new(csv_string, columns).format_csv
    
    render :index
  end
end
