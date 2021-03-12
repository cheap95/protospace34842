class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def change
    creat_table :prototypes do |t|
      t.string :name
      t.string :text
      t.text :image
      end
  end
end
