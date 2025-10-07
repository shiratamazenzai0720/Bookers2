class Book < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    # 画像一覧にユーザー画像を入れたい
    def get_image
        if image.attached?
            image
        else
            'no_image.jpg'
        end
    end
end
