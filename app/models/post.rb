class Post < ApplicationRecord
    belongs_to :user

    mount_uploader :img, ImgUploader

    has_many :comments, dependent: :destroy

    validates :content, presence: true

end
