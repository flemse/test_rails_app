class UserPost < ActiveRecord::Migration
  def change
    create_table :posts_users do |t|
      t.references :user
      t.references :post
    end
  end
end
