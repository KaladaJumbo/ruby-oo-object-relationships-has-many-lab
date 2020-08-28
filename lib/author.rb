require_relative './post'

class Author

    attr_accessor :name

    def initialize (name)

        @name = name

    end

    def posts 

        Post.all.select {|int_post| int_post.author == self}

    end

    def add_post(post)

        post.author = self 

    end

    def add_post_by_title(title)

        int_post = Post.new(title)
        int_post.author = self

    end

    def self.post_count

        has_author = []
        Post.all.each do |int_post|
            if int_post.author_name != nil
                has_author << int_post
            end
        end
        
        has_author.count 

    end

end