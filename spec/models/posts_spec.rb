require 'rails_helper'

describe Post do
  let(:post) { Post.create(title: "Hello", body: "World") }

  it { should validate_presence_of (:title) }
  it { should validate_presence_of (:body) }

  describe "#to_param" do
    it "parameterizes based on id and title" do
      expect(post.to_param).to eq "#{post.id}-#{post.title.downcase}"
    end
  end
end
