require 'rails_helper'

describe Parameterizer do
  it "parameterizes a model based on its id and title" do
    post = double(id: 1, title: "Hello")

    expect(Parameterizer.(post)).to eq "1-hello"
  end
end

