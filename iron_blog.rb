class Blog

  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end

  def add_sponsored(post)
    @posts.push	
  end

  def publish_front_page
    @posts.sort! { |x, y| y.date <=> x.date }
    @posts.each do |post|
      if post.sponsored == false
        puts post.title
	puts post.date
	puts "**************"
	puts post.text
	puts "----------------"
      else
        puts "****** #{post.title} ******"
	puts post.date
	puts "**************"
	puts post.text
	puts "----------------"
      end
    end	
  end
end

class Post
  attr_accessor :date, :title, :text, :sponsored

  def initialize (title, date, text, sponsored)
    @title = title
    @date = date
    @text = text
    @sponsored = sponsored
  end
end

blog = Blog.new()

firstPost = Post.new("Read me right now", 2016, "I'm a wonderful post", true)
secondPost = Post.new("Viva la birra loca", 2016, "Next Friday, Happy Hour for everybody!!", true)
thirdPost = Post.new("Crazy post", 2016, "No words", false)

blog.add_post(firstPost)
blog.add_post(secondPost)
blog.add_post(thirdPost)

blog.publish_front_page
