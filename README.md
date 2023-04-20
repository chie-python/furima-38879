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
| birthday              | date             | null: false     |



### Association
- has_many :items
- has_many :orders



## Items  テーブル

|Column               |Type              |Options                             |
|---------------------|------------------|------------------------------------|
| item_image          | string           | null: false                        |
| item_name           | string           | null: false                        |
| item_description    | text             | null: false                        |
| item_category_id    | integer          | null: false                        |
| item_condition_id   | integer          | null: false                        |
| shipping_charge_id  | integer          | null: false                        |
| ship_area_id        | integer          | null: false                        |
| ship_day_id         | integer          | null: false                        |
| price               | integer          | null: false                        |
| sales_commission    | integer          | null: false                        |
| sales_profit        | integer          | null: false                        |
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
| ship_postalcode          | integer          | null: false                        |
| ship_region              | string           | null: false                        |
| ship_city                | string           | null: false                        |
| ship_building            | string           |                                    |
| ship_phonenum            | integer          | null: false, foreign_key: true     |
| order                    | references       | nill: false, foreign_key: true     |


### Association
- belongs_to :order