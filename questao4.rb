# Autor: Thiago Cavalcanti
class Questao4
  File.open('entrada4.txt', 'r') do |linha|
    qtdCasos = linha.gets.to_i
    casoAtual = 1
    while casoAtual <= qtdCasos
      numero = linha.gets

      # Dividiremos os digitos em um array para ordena-los
      digitos = numero.split('')
      digitos.sort!
      # Agora invertemos o numero para dar prioridade aos ultimos digitos, visto que sao os maiores
      digitos.reverse!

      # Removendo lixo de string (fim da linha)
      maiorPossivel = ''
      digitos.each do |digito|
        if digito != "\r" && digito != "\n"
          maiorPossivel += digito
        end
      end

      puts "Caso #{casoAtual}: #{maiorPossivel}"
      casoAtual += 1
    end
  end
end