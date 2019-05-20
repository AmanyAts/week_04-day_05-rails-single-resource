class AddOriginalLanguageToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :original_language, :string
  end
end
