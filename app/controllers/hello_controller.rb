class HelloController < ApplicationController
    def world
        @alfabeto = %w{a b c d e f g h i j k l m n o p q r s t u v x y z}
        @estrutura = {:chave => 'valor'}
        @pessoas = [
            {:nome => 'João', :idade => 15},
            {:nome => 'José', :idade => 20},
            {:nome => 'Maria', :idade => 18}
        ]
        
    end
    end