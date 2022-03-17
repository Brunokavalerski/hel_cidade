class Estado < ActiveRecord::Base
  attr_accessible :nome, :sigla, :paise_id
  has_many :cidades
  belongs_to :paise
  has_many :cidades
  
  validates :nome, :presence => {:mensage => "Deve ser Preenchido"}, :length =>{:maximum => 20, :message => 'Deve ter no máximo 20 letras'}

  validates :sigla, :uniqueness => { :message => "Este estado já existe!!" }, :presence => {:message => 'Deve ser Preenchido'}, :length => {:maximum => 2, :message => 'Deve ter no máximo 2 letras'} 



  
end
