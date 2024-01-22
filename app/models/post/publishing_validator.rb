class Post::PublishingValidator < ActiveModel::Validator
  def validate(post)
    return unless post.published?

    validate_publish_date(post)
    validate_author(post)
  end

  def validate_publish_date(post)
    return if post.publish_date.present?

    post.errors.add(:publish_date, :blank)
  end

  def validate_author(post)
    return if post.author

    post.errors.add(:author, :blank)
  end
end