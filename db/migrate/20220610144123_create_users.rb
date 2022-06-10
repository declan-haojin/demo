class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :netid

      t.timestamps
    end
  end
end
