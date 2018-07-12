class AddHashToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :hashstore, :hstore, default: {}, null: false
  end
end
