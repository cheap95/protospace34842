# README
ProtSpace ER図

usersテーブル

Column       ｜ Type    | Options     |
 - - - - - - - - - - - - - - - - - - - 
｜ name       | string  | null: false |
｜ email |    | string  | null: false |
｜ password   | string  | null: false |
|  profile    | text    | null: false |
|  occupation | text    | null: false |
|  position   | text    | null: false | 

Association
- has_many : comments
- has_many : prototype

commentsテーブル

Column      ｜ Type       | Options                        |
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
｜ tittle    | text       | null: false                    |
｜ user      | references | null: false, foreign_key: true |
｜ prototype | references | null: false, foreign_key: true |

Association
- belong_to : user
- belong_to : prototypes

prototypesテーブル

Column       ｜ Type                | Options     |
 - - - - - - - - - - - - - - - - - - - - - - - - -
｜ title      | string              | null: false |
｜ catch_copy | text                | null: false |
｜ concept    | text                | null: false |
| image       | #ActiveStorageで実施 |             |
| user        | references          |             |

Association
- has_many users
- has_many comments

user_prototypes

Column       ｜ Type      | Options                      |
- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 user        | references | null: false , foreign_key: true
 prototype   | references | null: false , foreign_key: true

Association
- belong_to users
- belong_to prototypes