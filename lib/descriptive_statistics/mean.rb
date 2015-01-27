module DescriptiveStatistics
  def mean(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.mean_empty_collection_default_value if values.empty?

    (values.sum / values.number).round(4)
  end
end
