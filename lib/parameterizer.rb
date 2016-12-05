class Parameterizer
  def self.call(resource)
    "#{resource.id}-#{resource.title.to_s.downcase}"
  end
end
