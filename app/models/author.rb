
class Author < ApplicationRecord
  self.table_name='author'
  has_one :post
end