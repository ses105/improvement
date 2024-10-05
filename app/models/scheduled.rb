class Scheduled < ActiveHash::Base
  self.data = [
    { id: 1, name: "---"},
    { id: 2, name: "至急の対応をお願いします"},
    { id: 3, name: "2,3日以内"},
    { id: 4, name: "1週間以内"},
    { id: 5, name: "1ヶ月以内"},
  ]

  include ActiveHash::Associations
  has_many :posts
end