### Association
- has_many :works
- has_many :comments
## user テーブル

| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| name                  | string     | null: false       |
| profile               | text       | null: false       |
| position              | text       | null: false       |
| email                 | string     | null: false       |
| encrypted_password    | string     | null: false       |


### Association
- belongs_to :user
- has_many   :comments
- has_one_attached :image
## works テーブル

| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| title              | string     | null: false       |
| info               | text       | foreign_key: true |
| category           | string     | foreign_key: true |
| url                | string     | foreign_key: true |
| user               | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :work
## comments テーブル
| comments          | text       | null: false       |
| user              | references | foreign_key : true |
| work              | references | foreign_key : true |

