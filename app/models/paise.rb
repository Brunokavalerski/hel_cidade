class Paise < ActiveRecord::Base
  attr_accessible :id, :nome
  has_many :estados
 


  
  validates :id,  :numericality => {:message => 'Deve ser um Número'}
  
  validates :nome, :presence => {:message => "Deve ser Preenchido"}, :length => {:maximum => 20, :message => 'Deve ter no máximo 20 letras'}
   
end
