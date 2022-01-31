class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :lat_name
      t.string :email

      t.timestamps
    end
  end
end
