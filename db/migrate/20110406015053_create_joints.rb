class CreateJoints < ActiveRecord::Migration
  def self.up
    create_table :joints do |t|
      t.string :name
      t.text :desc
      t.text :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :joints
  end
end
