module Services
  class CsvFormatter
    include ActiveModel::Validations

    attr_reader :csv_string, :columns

    def initialize(csv_string, columns)
      @csv_string = csv_string
      @columns = columns
    end

    def format_csv
      groups = @csv_string.in_groups(@columns).to_a
      groups.shift.zip(*groups).map {|sub_array| sub_array}.to_a
    end
  end
end