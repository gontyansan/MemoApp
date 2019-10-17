class Memomemo < ApplicationRecord
  validates :title, :content, presence: true
end
