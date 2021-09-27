# Autor: Thiago Cavalcanti

def retornarProximaHora(horas)
  hora = horas.to_i + 1
end

require 'time'
class Time
  def humanize
    # Diretrizes de formato Time:
    minutos = self.strftime('%M').to_i # M - Minute of the hour (00..59)
    horas = self.strftime('%H').to_i # H - Hour of the day, 24-hour clock, zero-padded (00..23)

    horarios = { 1 => 'uma',
                 2 => 'duas',
                 3 => 'tres',
                 4 => 'quatro',
                 5 => 'cinco',
                 6 => 'seis',
                 7 => 'sete',
                 8 => 'oito',
                 9 => 'nove',
                 10 => 'dez',
                 11 => 'onze',
                 12 => 'meio dia',
                 13 => '13',
                 14 => '14',
                 15 => '15',
                 16 => '16',
                 17 => '17',
                 18 => '18',
                 19 => '19',
                 20 => '20',
                 21 => '21',
                 22 => '22',
                 23 => '23',
                 24 => 'meia noite',
                 00 => 'meia noite'}

=begin
    Este algoritmo considera o arredondamento (para cima) para o mais proximo de uma divisao por 10
    Temos hh:00, hh:10, hh:20, hh:30, hh:40, hh:50, hh+1:00
    Por exemplo, hh:05 tem a mesma distancia do inicio e hh:10, logo, arredondamos para cima
   Proxima hora: 07:55 -> Por volta de oito
  Inicio da hora: 08:03 -> Por volta das oito
=end
    if minutos == 0
      if horas == 12 || horas == 0
        puts "#{horarios[horas]}"
      else
        puts "#{horas} hora(s)"
      end
    elsif minutos < 5
      if horas == 12 || horas == 0
        puts "Por volta de #{horarios[horas]}"
      else
        puts "Por volta das #{horarios[horas]}"
      end
    elsif minutos >= 5 && minutos < 15
      if horas == 12 || horas == 0
        puts "Por volta de #{horarios[horas]} e dez"
      else
        puts "Por volta das #{horarios[horas]} e dez"
      end
    elsif minutos >= 15 && minutos < 25
      if horas == 12 || horas == 0
        puts "Por volta de #{horarios[horas]} e vinte"
      else
        puts "Por volta das #{horarios[horas]} e vinte"
      end
    elsif minutos >= 25 && minutos < 35
      if horas == 12 || horas == 0
        puts "Por volta de #{horarios[horas]} e meia"
      else
        puts "Por volta das #{horarios[horas]} e meia"
      end
    elsif minutos >= 35 && minutos < 45
      if horas == 12 || horas == 0
        puts "Por volta de #{horarios[horas]} e quarenta"
      else
        puts "Por volta das #{horarios[horas]} e quarenta"
      end
    elsif minutos >= 45 && minutos < 55
      if horas == 11 || horas == 23
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
