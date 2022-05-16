class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :payee, null: false, foreign_key: true
      t.integer :points
      t.timestamps
    end
  end
end
