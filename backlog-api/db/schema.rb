create_table :users, id: :integer, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
  t.string :name, null: false
  t.string :email, null: false
  t.datetime :created_at, null: false
  t.datetime :updated_at, null: false
end