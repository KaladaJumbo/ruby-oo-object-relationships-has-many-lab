require_relative './author.rb'

class Post

    attr_accessor :title, :author
    @@all = []

    def initialize (title)

        @title = title
        self.save
        @author = nil

    end

    def save

        Post.all << self

    end

    def self.all 

        @@all

    end

    def author_name

        if self.author == nil
            return nil
        else 
            return self.author.name 
        end

    end

end