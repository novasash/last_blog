class Comment < ApplicationRecord
  belongs_to :post
  has_rich_text :content

  broadcasts_refreshes_to :post
end
