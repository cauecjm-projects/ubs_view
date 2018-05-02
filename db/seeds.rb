# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach('./db/ubs.csv', headers: true) do |row|
  ubs = Ubs.new

  ubs.vlr_latitude                = row['vlr_latitude']
  ubs.vlr_longitude               = row['vlr_longitude']
  ubs.cod_munic                   = row['cod_munic']
  ubs.cod_cnes                    = row['cod_cnes']
  ubs.nom_estab                   = row['nom_estab']
  ubs.dsc_endereco                = row['dsc_endereco']
  ubs.dsc_bairro                  = row['dsc_bairro']
  ubs.dsc_cidade                  = row['dsc_cidade']
  ubs.dsc_telefone                = row['dsc_telefone']
  ubs.dsc_estrut_fisica_ambiencia = row['dsc_estrut_fisica_ambiencia']
  ubs.dsc_estrut_fisica_ambiencia = row['dsc_estrut_fisic_ambiencia']
  ubs.dsc_adap_defic_fisic_idosos = row['dsc_adap_defic_fisic_idosos']
  ubs.dsc_equipamentos            = row['dsc_equipamentos']
  ubs.dsc_medicamentos            = row['dsc_medicamentos']

  ubs.save
end
