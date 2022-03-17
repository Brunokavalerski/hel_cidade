class Cidade < ActiveRecord::Base
   attr_accessible :nome, :estado_id, :habitantes
   belongs_to :estado
   has_many :bairros

  

    validates :nome, :presence => {:message => "Deve ser Preenchido"}, :length =>{:maximum => 20, :message => 'Deve ter no máximo 20 letras'}

    validates :estado_id, :presence => {:message => 'Deve ser Preenchido'}, :length => {:maximum => 2, :message => 'Deve ter no máximo 2 letras'}

    validates :habitantes, :numericality => {:message => 'Deve ser um Número'}


end

