class ExampleController < ApplicationController

  def form7
    @article = Article.new
    @article.title   = "Please choose a title..."
    @article.publish = true
    @article.tags = %w(bar baz)
  end

  def form8
    @article = Article.new
    @article.title   = "Please choose a title..."
    @article.publish = true
    @article.tags = %w(bar baz)
    
    3.times do
      @article.attachments.build :name => "Please choose..."
    end
  end
  
  def form9
    @article = Article.find_or_create_by_title("Existing record") do |a|
      a.publish = true
      a.tags    = %w(bar foo)
      3.times { |i| a.attachments.build :name => "Attachment #{i}" }
    end
    @article.attachments.build
    render 'form8'
  end
  
end