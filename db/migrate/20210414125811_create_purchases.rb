class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :email
      t.string :sessionId
      t.boolean :isPaid

      t.timestamps
    end
  end
end
