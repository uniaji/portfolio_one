class Post < ApplicationRecord
    belongs_to :user

    mount_uploader :img, ImgUploader

    # has_many :comments, dependent: :destroy

    validates :content, {presence: true, length: {maximum: 140}}
    validates :img, presence: true


end
