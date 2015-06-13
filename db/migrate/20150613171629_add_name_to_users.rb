class AddNameToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :name,              default: ""
    end
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
