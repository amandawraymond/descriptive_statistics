module DescriptiveStatistics
  def variance(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.variance_empty_collection_default_value if values.empty?
    mean = values.mean
    sum  = values.map { |sample| (mean - sample) ** 2 }.reduce(:+) 
    (sum / (values.number - 1)).round(4)
  end
end
