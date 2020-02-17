class CreateMasterServices < ActiveRecord::Migration[6.0]
  def change
    create_table :master_services do |t|

      t.timestamps
    end
  end
end
