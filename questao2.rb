# Autor: Thiago Cavalcanti
class Questao2
  File.open('entrada2.txt', 'r') do |linha|
    qtdVeiculos = linha.gets.to_i
    sequenciaAnotada = linha.gets

    # Convertendo a string em um array numerico
    numeros = sequenciaAnotada.split
    veiculos = numeros.map do |numero|
      numero.to_i
    end

    # Obtendo a maior sequencia
    maiorSequencia = 1
    sequenciaAtual = 1
    indice = 0
    while  (indice < qtdVeiculos-1)
      if veiculos[indice] < veiculos[indice.+1]
        sequenciaAtual += 1
        if sequenciaAtual > maiorSequencia
          maiorSequencia = sequenciaAtual
        end
      else
        sequenciaAtual = 1
      end
      indice += 1
    end

    puts maiorSequencia
  end
end
