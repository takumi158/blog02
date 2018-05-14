class CreateBbs < ActiveRecord::Migration[5.2]
  def change
    create_table :bbs do |t|
      t.date :date
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
