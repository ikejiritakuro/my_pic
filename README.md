# README

## users table

| Column             | Type                | Options                  |
|--------------------|---------------------|------------------------- |
| email              | string              | null: false              |
| encrypted_password | string              | null: false              |
| nickname           | string              | null: false              |

### Association

- has_many :tweets
- has_many :comments
- has_many :sns_credentials

## tweets table

| Column          | Type         | Options           |
|-----------------|--------------|-------------------|
| text            | text         | null: false       |
| user            | references   | foreign_key: true |


### Association

- belongs_to :user
- has_many :comments
- has_one_attached :image

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| user        | references | foreign_key: true |
| tweet       | references | foreign_key: true |
| text        | text       |                   |

### Association

- belongs_to :tweet
- belongs_to :user


## SNS_credentials  table

| Column                  | Type       | Options           |
|-------------------------|------------|-------------------|
| provider                | string     | null: false       |
| uid                     | string     | null: false       |
| user                    | references | foreign_key: true |


### Association

- belongs_to :user, optional: true