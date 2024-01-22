class Post::DraftValidator < ActiveModel::Validator
  def validate(post)
    return unless post.published? && post.will_save_change_to_draft?
    
    post.errors.add(:base, "Switching back to draft is not allowed for published posts")
  end
end