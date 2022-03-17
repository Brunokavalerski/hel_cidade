class Bairro < ActiveRecord::Base
  attr_accessible :id, :nome, :cidade_id
  belongs_to :cidade
  has_many :ceps

  
  validates :id,  :numericality => {:message => 'Deve ser Número'}
  
  validates :nome, :presence => {:message => "Deve ser Preenchido"}, :length =>{:maximum => 20, :massagem => 'Deve ter no máximo 20 letras'}
end
