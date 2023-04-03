class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer

  def include_associations!
    include! :profile
    include! :posts
  end
end
