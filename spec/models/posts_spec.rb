require 'rails_helper'

describe Post do
  it { should validate_presence_of (:title) }
  it { should validate_presence_of (:body) }

  it 'lists itself in descending order' do
    post = Post.create(title: 'bar', body: 'baz')
    post.save
    post2 = Post.create(title: 'learn', body: 'rspec')
    post2.save
    expect(Post.all).to eq [post2, post]
  end

  describe '#tagged_with_programming' do
    it 'returns all posts tagged with programming' do
      post = Post.create(title: 'Foo', body: 'Bar')  
      post.tag_list << 'programming'
      post.save

      post2 = Post.create(title: 'Hello', body: 'World')
      post2.tag_list << 'web development'
      post2.save  
      
      expect(Post.tagged_with_programming.to_a).to match_array [post, post2]
    end
  end
end
