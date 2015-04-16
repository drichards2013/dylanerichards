class Parameterizer
  def self.parameterize(resource)
    "#{resource.id}-#{resource.title.downcase}"
  end
end
