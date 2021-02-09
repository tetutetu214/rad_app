class Work < ApplicationRecord
    #バリデーション
    validates :title, presence: true
end
