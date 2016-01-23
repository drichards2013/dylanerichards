class Parameterizer
  def self.call(resource)
    "#{resource.id}-#{resource.title.downcase}"
  end
end
