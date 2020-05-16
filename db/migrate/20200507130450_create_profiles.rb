class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :nickname,           null: false, default: ""
      t.string :sex,                default: ""
      t.integer :age,               default: ""
      t.string :birthplace,         default: ""
      t.string :activearea,         null: false, default: ""
      t.references :user

      t.timestamps
    end
    
    add_index :profiles, :nickname,             unique: true
    add_index :profiles, :activearea

  end
end
