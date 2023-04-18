# テーブル設計

## Users  テーブル

|Column                 |Type              |Options          |
|-----------------------|------------------|-----------------|
| nickname              | string           | null: false     |
| email                 | string           | null: false     |
| encrypted_password    | string           | null: false     |
| name1                 | string           | null: false     |
| name2                 | string           | null: false     |
| name_kana1            | string           | null: false     |
| name_kana2            | string           | null: false     |
| birth_year            | integer          | null: false     |
| birth_month           | integer          | null: false     |
| birth_day             | integer          | null: false     |


### Association
- has_many :items
- has_many :orders
- has_many :comments



## Items  テーブル

|Column               |Type              |Options                             |
|---------------------|------------------|------------------------------------|
| item_image          | string           | null: false                        |
| item_name           | string           | null: false                        |
| item_description    | string           | null: false                        |
| item_category       | string           | null: false                        |
| item_condition      | string           | null: false                        |
| shipping_charges    | string           | null: false                        |
| ship_area           | string           | null: false                        |
| ship_day            | integer          | null: false                        |
| price               | integer          | null: false                        |
| sales_commission    | integer          | null: false                        |
| sales_profit        | integer          | null: false                        |
| user_id             | references       | null: false, foreign_key: true     |
| order_id            | references       | null: false, foreign_key: true     |
| Item_categories_id  | references       | null: false, foreign_key: true     |
| Item_conditions_id  | references       | null: false, foreign_key: true     |
| item_opened         | integer          | null: false                        |


### Association
- belongs_to :user
- belongs_to :order
- has_many :comments



## Orders  テーブル

|Column                    |Type              |Options                             |
|--------------------------|------------------|------------------------------------|
| card_number              | integer          | null: false                        |
| card_effective_date      | integer          | null: false                        |
| card_cvc                 | integer          | null: false                        |
| ship_postnum             | integer          | null: false                        |
| ship_region              | string           | null: false                        |
| ship_city                | string           | null: false                        |
| ship_building            | string           |                                    |
| ship_phonenum            | integer          | null: false                        |
| user_id                  | references       | null: false, foreign_key: true     |
| item_id                  | references       | null: false, foreign_key: true     |


### Association
- belongs_to :user
- belongs_to :item



## Comments  テーブル

|Column                 |Type              |Options                             |
|-----------------------|------------------|------------------------------------|
| comment               | string           | null: false                        |
| name                  | string           | null: false                        |
| item_id               | references       | null: false, foreign_key: true     |


### Association
- belongs_to :user
- belongs_to :item



## Item_categories  テーブル

|Column                 |Type              |Options          |
|-----------------------|------------------|-----------------|
| category              | string           | null: false     |


## Item_conditions  テーブル

|Column                 |Type              |Options          |
|-----------------------|------------------|-----------------|
| condition             | string           | null: false     |

