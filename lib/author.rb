class Author
attr_accessor :name

@@posts = []

def initialize(name)
     @name=name
end

def posts
  @@posts
end

def add_post(post)
   @post = post
   @@posts << @post
   @post.author = self
end

def add_post_by_title(title)
   post = Post.new(title)
   @@posts << post
   post.author = self
end

def self.post_count
  Post.all.size
end
end
