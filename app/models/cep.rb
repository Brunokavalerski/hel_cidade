class Cep < ActiveRecord::Base
  attr_accessible :cep, :id, :logradouro, :bairro_id
  belongs_to :bairro
  

validates :cep, :uniqueness => { :message => "já existe!!" } ,:presence => {:message => "Deve ser Preenchido"}, :length => {:maximum => 8, :message => 'Deve ter no máximo 8 números'}

validates :id, :numericality => {:message => 'Deve ser um número'}

validates :logradouro, :presence => {:message => "Deve ser Preenchido"}, :length => {:maximum => 120, :message =>'Deve ter no máximo 20 letras'}

validates :bairro_id, :presence => {:message => "Deve ser Preenchido"}
end
