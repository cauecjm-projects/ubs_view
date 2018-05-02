class Ubs < ActiveRecord::Migration[5.1]

  def change
    create_table :ubs, option: 'ENGIEN=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci' do |t|
      t.decimal :vlr_latitude,            precision: 15, scale: 10 
      t.decimal :vlr_longitude,           precision: 15, scale: 10
      t.column  :cod_munic,     'INT(7)',                           null: false
      t.column  :cod_cnes,      'INT',                              null: false
      t.string  :nom_estab,                                         null: false
      t.string  :dsc_endereco
      t.string  :dsc_bairro
      t.string  :dsc_cidade
      t.string  :dsc_telefone
      t.string  :dsc_estrut_fisica_ambiencia
      t.string  :dsc_adap_defic_fisic_idosos
      t.string  :dsc_equipamentos
      t.string  :dsc_medicamentos

      t.index :cod_munic
      t.index :cod_cnes
    end
  end

end
