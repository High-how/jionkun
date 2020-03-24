# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|email|string|null: false, add_index :users, :email, unique: true|
|encrypted_password|string|null: false|

### Association
- has_many :users_members
- has_many :members, though: :users_members


## users_membersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|member|references|null: false, foreign_key: true|

### Association
- belongs_to : user
- belongs_to : member


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|tel|varchar(11)|null: false|
|birthday|date|null: false|
|address|references|null: false, foreign_key: true|

### Association
- has_many :users_members
- has_many :users, though: :users_members
- has_many :ancestors
- belongs_to : family
- belongs_to : address


## familyesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|birthday|date|null: false|
|relationship|string|null: false|
|member|references|null: false, foreign_key: true|

### Association
- belongs_to :member


## addressesテーブル

|Column|Type|Options|
|------|----|-------|
|postcode|varchar|null: false|
|city|varchar|null: false|
|block|varchar|null: false|
|building|varchar|null: false|
|member|references|null: false, foreign_key: true|

### Association
- belongs_to :member

## ancestorsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|kaimyou|text|null: false|
|deceased|date|null: false|
|member|references|null: false, foreign_key: true|

### Association
- belongs_to : member