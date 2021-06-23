class AddEnglishToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :director, :boolean, default: true
  end
end
