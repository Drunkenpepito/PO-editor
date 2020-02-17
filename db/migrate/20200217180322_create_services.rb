class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.references :master_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
