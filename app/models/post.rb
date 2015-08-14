class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user
  has_many :comments

    def post_tag_format

    end

    def name_tags(tags_new)

    end

end
