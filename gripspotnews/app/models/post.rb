class Post < ActiveRecord::Base
  belongs_to :author, :foreign_key => "author_id"
  belongs_to :category, :foreign_key => "category_id"
  attr_accessible :admin, :content, :title, :author_id, :category_id
  has_attached_file :photo, :styles => { :small => "150x150"},
  					:url  => "/assets/posts/:id/:style/:basename.:extension"
  					:path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"
  attr_protected :id

   validates_presence_of :content
   validates_presence_of :title
   validates_presence_of :author
   validates_presence_of :category
end
