program energy;
uses crt;
var
  vAntes : real;
  vAtual : real;
  quantidadeKWH : real;
  ValorConsumo : real;
  ValorTotal : real;
begin
write('Digite o valor anterior do relógio: ');
readln(vAntes);

writeln('');

write('Digite o valor atual do relógio: ');
readln(vAtual);

quantidadeKWH := vAtual - vAntes;
//quantidadeKWH/100 -> Converte para Wh 
//24 -> Quantidade horas em 1 dia
//30 - > Dias em 1 mêS
//2.5 -> Valor por kWh R$
ValorConsumo := ((quantidadeKWH/1000)*24*30*(2.5));
//ICMS - > 2.5 R$
ValorTotal := ValorConsumo*(1.25);

writeln ( 'Quantidade kWh =           ',quantidadeKWH:2:2);
writeln ( 'Consumo mensal =        R$ ',ValorConsumo:2:2);
writeln ( 'Consumo mensal + ICMS = R$ ',ValorTotal:2:2);

readkey;
end.
