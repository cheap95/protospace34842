class AddConceptToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :concept, :string
  end
end
