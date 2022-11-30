class ShortenedContentSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  # This method limits the post's content to 40 characters
  def short_content
    "#{self.object.content[0..39]}..."
  end
end
