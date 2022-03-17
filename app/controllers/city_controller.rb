class CityController < ApplicationController

    def santa_catarina
        @santa_catarina = [
            {:nome => 'Chapecó', :estado => 'SC', :habitantes => 64554},
            {:nome => 'Santa catarina', :estado => 'SC', :habitantes => 215654}
            ]
        end
    def parana
        @parana = [
            {:nome => 'Londrina', :estado => 'PR', habitantes: 145656},
            {:nome => 'Clevelandia', :estado => 'PR', habitantes: 645}
            ]
    end
      
      
end
