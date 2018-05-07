class LikesFields < ActiveRecord::Migration[5.1]
  def change
    change_table :likes do |t|
      t.references :user
      t.references :pin
    end
  end
end
