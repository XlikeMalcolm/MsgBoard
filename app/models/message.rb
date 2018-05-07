class Message < ApplicationRecord
  validates :content, presence: true, length: { maximum: 144 }
end
