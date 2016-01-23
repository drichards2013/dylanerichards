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

  describe "#pretty_created_at" do
    it "formats the date" do
      time = Time.local(2016, 1, 23)
      Timecop.freeze(time)

      expect(post.pretty_created_at).to eq "January 23 2016"
    end
  end
end
