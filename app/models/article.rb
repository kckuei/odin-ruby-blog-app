class Article < ApplicationRecord
  include Visible    # includes from models/concerns

  has_many  :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
