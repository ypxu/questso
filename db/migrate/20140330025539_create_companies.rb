class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :display_name
      t.text :overview
      t.string :homepage_url
      t.string :twitter_handle
      t.attachment :logo
      t.integer :number_of_employees
      t.integer :founded_year
      t.integer :founded_month
      t.integer :founded_day
      t.timestamps
    end
  end
end
