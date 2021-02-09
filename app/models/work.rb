class Work < ApplicationRecord
    #バリデーション
    validates :title, presence: true
    validates :url, presence: true

    belongs_to :user

end
