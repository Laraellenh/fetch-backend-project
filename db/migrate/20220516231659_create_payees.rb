class CreatePayees < ActiveRecord::Migration[7.0]
  def change
    create_table :payees do |t|
      t.string :name

      t.timestamps
    end
  end
end
