class PostSerializer < ActiveModel::Serializer
  attributes  :title, :content

  def author_post
    "#{self.object.title} - #{self.object.short_content[0..40]}... #{self.object.tags}"
  end
    belongs_to :author
    has_many :tags
end
