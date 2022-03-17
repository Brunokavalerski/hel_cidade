class PessoasController < ApplicationController
    def criancas
        @criancas = [
            {:nome => 'Zéquinha', :idade => 7},
            {:nome => 'Pedrinho', :idade => 6}
            ]
        end
    def adultos
        @adultos = [
            {:nome => 'Marcos', :idade => 30},
            {:nome => 'Pedro', :idade => 35}
            ]
    end
end