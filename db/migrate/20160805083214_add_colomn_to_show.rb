class AddColomnToShow < ActiveRecord::Migration
  def change
  	add_column :solds, :seller_id, :interger
  end
end
