class CreateUsersGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :users_groups do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
