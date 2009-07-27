class Article < ActiveRecord::Base
  
  has_many :attachments
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  attr_accessor :publish
  
  serialize :tags, Array
  
  before_save :publish_article
  
  protected
  
  def publish_article
    self.published_at = Time.now if publish
  end
  
end
