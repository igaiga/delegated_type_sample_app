class Entry < ApplicationRecord
  delegated_type :entryable, types: ["Message", "Comment"]
  delegate :title, to: :entryable

  def self.create_with_comment!(content:)
    create!(entryable: Comment.new(content: content))
  end

  def self.create_with_message!(subject:, body:)
    create!(entryable: Message.new(subject: subject, body: body))
  end
end
