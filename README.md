# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |
| profile    | string | null: false |

### Association
 - has_many :hobby
 - has_many :comments

## comments テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| text       | string | null: false |
| user       | string | null: false |
| hobby      | string | null: false |

### Association
 - belong_to :users
 - belong_to :hobby

## hobby テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |
| release_date | data   | null: false |
| recommended  | string | null: false |
| image        | string | null: false |
| category_id  | string | null: false |

### Association
 - belongs_to :users
 - has_many :comments
