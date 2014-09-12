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

  describe '#tagged_with_photography' do
    it 'returns all posts tagged with photography' do
      post = Post.create(title: 'Foo', body: 'Bar')
      post.tag_list << 'photography'
      post.save

      expect(Post.tagged_with_photography.to_a).to match_array [post]
    end
  end

  describe '#tagged_with_running' do
    it 'returns all posts tagged with running' do
      post = Post.create(title: 'Foo', body: 'Bar')
      post.tag_list << 'running'
      post.save

      expect(Post.tagged_with_running.to_a).to match_array [post]
    end
  end

  describe '#tagged_with_yoga' do
    it 'returns all posts tagged with yoga' do
      post = Post.create(title: 'Foo', body: 'Bar')
      post.tag_list << 'yoga'
      post.save

      expect(Post.tagged_with_yoga.to_a).to match_array [post]
    end
  end

  describe '#tagged_with_mindfulness' do
    it 'returns all posts tagged with mindfulness' do
      post = Post.create(title: 'Foo', body: 'Bar')
      post.tag_list << 'mindfulness'
      post.save

      expect(Post.tagged_with_mindfulness.to_a).to match_array [post]
    end
  end


  describe '#tagged_with_web_development' do
    it 'returns all posts tagged with web development' do
      post = Post.create(title: 'Foo', body: 'Bar')
      post.tag_list << 'web development'
      post.save

      expect(Post.tagged_with_web_development.to_a).to match_array [post]
    end
  end
end
