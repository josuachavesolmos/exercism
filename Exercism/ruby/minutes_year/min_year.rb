# frozen_string_literal: true

puts 'Ingrese la cantidad de años:'
@year = gets.to_i

def year_minutes
  @ym = (((@year * 365) * 24) * 60)
end

def year_secs
  @ys = ((((@year * 365) * 24) * 60) * 60)
end

puts "#{@year} años en minutos es:#{year_minutes.to_i} minutos, #{year_secs} segundos"
