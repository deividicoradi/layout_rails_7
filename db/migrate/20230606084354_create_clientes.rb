class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome, limit: 250
      t.string :telefone, limit: 20
      t.string :endereco

      t.timestamps
    end
  end
end
