class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      # t.string :name

      # t.references :theatre, foreign_key:true
      # t.references :movie, foreign_key:true

      t.timestamps
    end
  end
end
