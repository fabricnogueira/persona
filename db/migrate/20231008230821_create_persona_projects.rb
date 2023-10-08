class CreatePersonaProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :persona_projects do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
