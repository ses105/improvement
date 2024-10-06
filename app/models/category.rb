class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '不動産登記'},
    { id: 3, name: '商業登記'},
    { id: 4, name: '業務改善（excel,gas等）'},
    { id: 5, name: 'その他'},
  ]

  include ActiveHash::Associations
  has_many :posts
end