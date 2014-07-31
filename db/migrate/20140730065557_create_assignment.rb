class CreateAssignment < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :person
      t.belongs_to :location
      t.text :role
    end
  end
end
