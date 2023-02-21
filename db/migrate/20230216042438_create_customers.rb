class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name

      t.references :theatre, foreign_key:true
      t.references :movie, null:false, foreign_key:true
      
      # t.references :user, null:false, foreign_key:true

      t.timestamps
    end
  end
end
