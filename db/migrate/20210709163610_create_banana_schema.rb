class CreateBananaSchema < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up   { execute 'CREATE SCHEMA banana' }
      dir.down { execute 'DROP SCHEMA banana' }
    end
  end
end
