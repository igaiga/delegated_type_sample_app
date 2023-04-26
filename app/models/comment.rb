class Comment < ApplicationRecord
  has_one :entry, as: :entryable, touch: true
  def title
    content.truncate(20)
  end
end
