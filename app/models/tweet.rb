class Tweet < ApplicationRecord
  belongs_to :company
 belongs_to :post
# 下記の1行を追加
 has_many :comments

end
