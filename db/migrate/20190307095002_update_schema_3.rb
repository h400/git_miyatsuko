class UpdateSchema3 < ActiveRecord::Migration[4.2]
  def up
    add_column :employees, :section_id, :integer 
    remove_column :employees, :department
    create_table :sections do |t|
      t.string :sec_name
      t.timestamps
    end
  end

  def down
    remove_column :employees, :section_id
    add_column :employees, :department, :string 
    drop_table :sections
  end

end
