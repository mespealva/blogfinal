class CreateArticuleTags < ActiveRecord::Migration[5.2]
  def change
    create_table :articule_tags do |t|
      t.references :tag, foreign_key: true
      t.references :articule

      t.timestamps
    end
  end
end
