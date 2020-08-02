create_table :users, id: :integer, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
  t.string :name, null: false
  t.string :email, null: false
  t.timestamps
end

create_table :product_back_logs, id: :integer, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
  t.string :title, null: false
  t.text :completion_definition
  t.text :description
  t.integer :user_id
  t.integer :category_id
  t.integer :sprint_number
  t.float :story_point
  t.integer :status
  t.timestamps
end