class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      # Here we'll put code that specifies the changes we want to make to our database.
      t.column(:name, :string)
      t.column(:cost, :integer)
      t.column(:country_of_origin, :string)
      # t.integer :product_id

      t.timestamps()
    end
  end
end
