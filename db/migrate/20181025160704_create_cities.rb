class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end

    change_table :doctors do |t|
      t.belongs_to :city
    end

    change_table :patients do |t|
      t.belongs_to :city
    end

    change_table :appointments do |t|
      t.belongs_to :city
    end
  end
end
