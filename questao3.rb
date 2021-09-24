# Autor: Thiago Cavalcanti
class Questao3
  File.open('entrada3.txt', 'r') do |linha|
    entrada = linha.gets

    # Convertendo a string em tres inteiros
    dados = entrada.split
    totalCadeiras = dados[0].to_i
    cadeirasPorLinha = dados[1].to_i
    colunaImpressa = dados[2].to_i
    qtdColunas = cadeirasPorLinha

    if colunaImpressa < qtdColunas
      cadeiraExibida = colunaImpressa
      while cadeiraExibida <= totalCadeiras
        puts cadeiraExibida
        cadeiraExibida = cadeiraExibida.+cadeirasPorLinha
      end
    end
  end
end