class CorrectsLatnameonSpeakers < ActiveRecord::Migration[7.0]
  def change
    remove_column :speakers, :lat_name, :string
    add_column :speakers, :last_name, :string
  end
end
