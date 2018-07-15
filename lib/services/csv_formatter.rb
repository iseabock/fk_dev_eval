module Services
  class CsvFormatter
    attr_reader :csv_string, :columns

    def initialize(csv_string, columns)
      @csv_string = csv_string
      @columns = columns
    end

    def format_csv
      raise ArgumentError.new("CSV String must be between 1-100 fields") unless csv_string_within_range?
      groups = @csv_string.in_groups(@columns).to_a
      groups.shift.zip(*groups).map {|sub_array| sub_array}.to_a
    end

    private

    def csv_string_within_range?
      @csv_string.count.between?(1,100)
    end
  end
end