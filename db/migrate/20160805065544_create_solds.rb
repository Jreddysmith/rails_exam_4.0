class CreateSolds < ActiveRecord::Migration
  def change
    create_table :solds do |t|
      t.string :product
      t.float :amount
      t.string :seller
      t.references :user, index: true

      t.timestamps
    end
  end
end
