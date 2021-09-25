# Autor: Thiago Cavalcanti

def retornarProximaHora(horas)
  hora = horas.to_i + 1
  hora.to_s
end

require 'time'
class Time
  def humanize
    # Diretrizes de formato Time:
    minutos = self.strftime('%M').to_i # M - Minute of the hour (00..59)
    horas = self.strftime('%H') # H - Hour of the day, 24-hour clock, zero-padded (00..23)

    # Horas em string para associar chaves; minutos em inteiro para comparacoes

    horarios = {'1' => 'uma',
                '2' => 'duas',
                '3' => 'tres',
                '4' => 'quatro',
                '5' => 'cinco',
                '6' => 'seis',
                '7' => 'sete',
                '8' => 'oito',
                '9' => 'nove',
                '10' => 'dez',
                '11' => 'onze',
                '12' => 'meio dia',
                '13' => '13',
                '14' => '14',
                '15' => '15',
                '16' => '16',
                '17' => '17',
                '18' => '18',
                '19' => '19',
                '20' => '20',
                '21' => '21',
                '22' => '22',
                '23' => '23',
                '24' => 'meia noite',
                '00' => 'meia noite'}

=begin
    Este algoritmo considera o arredondamento (para cima) para o mais proximo
    Temos inicio da hora, hh e meia, dez pra hh e proxima hora
    Por exemplo, hh:15 tem a mesma distancia do inicio e hh e meia, logo, arredondamos para cima
=end
    if minutos < 15
      if horas == '12' || horas == '00'
        puts "Por volta de #{horarios[horas]}"
      else
        puts "Por volta das #{horarios[horas]}"
      end
    elsif minutos >= 15 && minutos < 40
      if horas == '12' || horas == '00'
        puts "Por volta de #{horarios[horas]} e meia"
      else
        puts "Por volta das #{horarios[horas]} e meia"
      end
    elsif minutos >= 40 && minutos < 55
      if horas == '11' || horas == '23'
        puts "Por volta de dez pra #{horarios[retornarProximaHora(horas)]}"
      else
        puts "Por volta de dez pras #{horarios[retornarProximaHora(horas)]}"
      end
    else
      puts "Por volta de #{horarios[retornarProximaHora(horas)]}"
    end
  end
end

# Apos definir a classe e o metodo podemos consumir os dados do arquivo
File.open('entrada1.txt').each_line do |hora|
  hora.slice! "\n"
  Time.parse(hora).humanize
end