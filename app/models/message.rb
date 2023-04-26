class Message < ApplicationRecord
  has_one :entry, as: :entryable, touch: true
  def title
    subject
  end
end
