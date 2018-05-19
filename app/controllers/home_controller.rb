class HomeController < ApplicationController
  def index
    @tags = Tag.all
    tag_counts = Hash.new
    @tags.each do |tag|
      tag_counts["#{tag.name}"] = "#{tag.posts.count}"
    end
    @tag_sorted = tag_counts.sort_by { |x,y| y }
    @tag_sorted.reverse!
    puts "#{@tag_sorted}"
    puts "#{@tag_sorted[0]}"
    puts "#{@tag_sorted[0].first}"

    # for i in 1..@tags.count
    #   tag("#{i}") = 0
    #   @tags.each do |tag|
    #     tag("#{i}")+=tag.posts.count
    #   end
    #   array << tag("#{i}")
    # end
    # array.sort!
    # @answer << Tag.find(array[0])


      
  end
  
  def result
  end
  
  def artist
  end
  
end
