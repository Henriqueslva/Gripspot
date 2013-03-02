class Post < ActiveRecord::Base
  belongs_to :author, :foreign_key => "author_id"
  belongs_to :category, :foreign_key => "category_id"
  attr_accessible :admin, :content, :title, :author_id, :category_id
  has_attached_file :photo

   validates_presence_of :content
   validates_presence_of :title
   validates_presence_of :author
   validates_presence_of :category
end
