class Article < ApplicationRecord
  include Visible    # includes from models/concerns

  has_many  :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
