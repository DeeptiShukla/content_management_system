class AddPasswordDigestToAdminUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column "admin_users", "hashedpassword"
    add_column "admin_users", "password_digest", :string
  end

  def down
    remove_column "admin_users", "password_digest"
    add_column "admin_users", "hashedpassword", :string, :limit=> 40
  end
end
