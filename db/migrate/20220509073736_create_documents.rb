class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
    	t.references :user, index: true
      t.string :name
      t.text :description
      t.string :attachment

      t.timestamps
    end
  end
end
