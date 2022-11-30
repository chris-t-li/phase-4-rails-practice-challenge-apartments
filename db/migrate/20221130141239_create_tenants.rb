class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
