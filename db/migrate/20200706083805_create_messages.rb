class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :username
      t.text :content

      t.timestamps
    end
  end
end
