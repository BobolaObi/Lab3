class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.text :message
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
