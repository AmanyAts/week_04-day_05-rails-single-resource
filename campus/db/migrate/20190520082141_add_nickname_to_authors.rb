class AddNicknameToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :nickname, :string
  end
end
