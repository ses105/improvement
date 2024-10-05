# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |


### Association
-has_many :posts
-has_many :answers


## posts テーブル

| Column                  | Type       | Options     |
| ------------------------| ---------- | ----------- |
| title                   | string     | null: false |
| question                | text       | null: false |
| category_id             | integer    | null: false |
| scheduled_id            | integer    | null: false |
| user                    | references | null: false, foreign_key: true |

### Association
- has_many   :answers
- belongs_to :category
- belongs_to :scheduled
- belongs_to :user


## answers テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ------------|
| post        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :post
- belongs_to :user
- has_one :address
