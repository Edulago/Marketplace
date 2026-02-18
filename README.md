+----------------+          +----------------+
|     User       |          |    Address     |
+----------------+          +----------------+
| id: integer    |1        *| id: integer    |
| name: string   |----------| street: string |
| email: string  |          | number: string |
| phone: string  |          | complement: string |
| password_digest|          | neighborhood: string |
| created_at     |          | city: string   |
| updated_at     |          | state: string  |
+----------------+          | zip_code: string |
| has_many :products        | country: string |
| has_many :interests       | user_id: integer |
| has_many :addresses       | created_at     |
+----------------+          | updated_at     |
                            +----------------+
                            | belongs_to :user |
                            +----------------+
        |                          
        | 1                        
        |                          
        *                          
+----------------+          +----------------+
|    Product     |          |   Category     |
+----------------+          +----------------+
| id: integer    |*        1| id: integer    |
| title: string  |----------| name: string   |
| description: text |       | created_at     |
| price: decimal |          | updated_at     |
| user_id: integer |        +----------------+
| category_id: integer |    | has_many :products |
| created_at     |          +----------------+
| updated_at     |          
+----------------+          
| belongs_to :user          
| belongs_to :category      
| has_many :interests       
+----------------+          
        |                   
        | 1                 
        |                   
        *                   
+----------------+
|    Interest    |
+----------------+
| id: integer    |
| user_id: integer |
| product_id: integer |
| created_at     |
| updated_at     |
+----------------+
| belongs_to :user
| belongs_to :product
+----------------+