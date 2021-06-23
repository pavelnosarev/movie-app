class AddAgeToActor < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :age, :numerical
  end
end
