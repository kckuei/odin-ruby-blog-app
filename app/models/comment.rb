class Comment < ApplicationRecord
  include Visible    # includes from models/concerns

  belongs_to :article
end
