class CreateMarsenModels < ActiveRecord::Migration[5.1]
  def change
    create_table :marsen_models do |t|
      t.string :marsenNumb
      t.integer :numberIter
      t.integer :readNumb

      t.timestamps
    end
  end
end
