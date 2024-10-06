class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :scheduled

  with_options presence: true do
    validates :title, :question
    validates :category_id, :scheduled_id, numericality:{ other_than: 1, message: 'must be selected with the correct item'}
  end
end
