# テーブル設計

## Users  テーブル

|Column                 |Type              |Options                       |
|-----------------------|------------------|------------------------------|
| nickname              | string           | null: false                  |
| email                 | string           | null: false, unique: true    |
| encrypted_password    | string           | null: false                  |
| first_name            | string           | null: false                  |
| last_name             | string           | null: false                  |
| first_name_kana       | string           | null: false                  |
| last_name_kana        | string           | null: false                  |
| birthday              | date             | null: false                  |



### Association
- has_many :items
- has_many :orders



## Items  テーブル

|Column               |Type              |Options                             |
|---------------------|------------------|------------------------------------|
| item_name           | string           | null: false                        |
| item_description    | text             | null: false                        |
| item_category_id    | integer          | null: false                        |
| item_condition_id   | integer          | null: false                        |
| shipping_charge_id  | integer          | null: false                        |
| ship_area_id        | integer          | null: false                        |
| ship_day_id         | integer          | null: false                        |
| price               | integer          | null: false                        |
| user                | references       | null: false, foreign_key: true     |



### Association
- belongs_to :user
- has_one :order



## Orders  テーブル

|Column                 |Type              |Options                             |
|-----------------------|------------------|------------------------------------|
| user                  | references       | null: false, foreign_key: true     |
| item                  | references       | null: false, foreign_key: true     |


### Association
- belongs_to :user
- belongs_to :item
- has_one :ship_adress



## Ship_Adresses  テーブル

|Column                    |Type              |Options                             |
|--------------------------|------------------|------------------------------------|
| ship_postalcode          | string           | null: false                        |
| ship_area_id             | integer          | null: false                        |
| ship_city                | string           | null: false                        |
| ship_house_number        | string           | null: false                        |
| ship_building_name       | string           |                                    |
| ship_phone_number        | string           | null: false                        |
| order                    | references       | null: false, foreign_key: true     |


### Association
- belongs_to :order