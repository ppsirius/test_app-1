class Post < ActiveRecord::Base
  belongs_to :user
  after_save :set_visible_to_false

  validates :title, :body, presence: true
  
protected
  def set_visible_to_false
    self.visible = false
  end
  
end
