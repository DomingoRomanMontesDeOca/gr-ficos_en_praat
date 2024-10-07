# Grafica oscilograma, curva de intensidad y transcripción de un TextGrid



sonido = selected("Sound")
tg = selected("TextGrid")



select sonido
intens = To Intensity: 100, 0, "yes"


max_int = Get maximum: 0, 0, "parabolic"

if max_int < 90 and max_int > 80

	maximo_intens_grafico = 90

elsif max_int >= 40 and max_int <=50

	maximo_intens_grafico = 40

else

	maximo_intens_grafico = 30

endif




select sonido

Erase all

Line width: 1

Select inner viewport: 1	,5.5,1,2

Blue

Draw: 0, 0, 0, 0, "no", "curve"

Draw inner box

select intens

Select inner viewport: 1	, 5.5, 2, 4

Green


Line width: 2


Draw: 0, 0, 5, maximo_intens_grafico, "no"




Line width: 1
Draw inner box

Marks right every: 1, 20, "yes", "yes", "yes"

Text right: "yes", "dB"



select tg

ene_puntos = Get number of points: 1

for i to ene_puntos
	select tg
	tiempo = Get time of point: 1, i
	sonido$ = Get label of point: 1, i
	One mark bottom: tiempo, "no", "yes", "no", sonido$

endfor




select intens

Remove


Select outer viewport: 1	, 6.15, 1, 4.3
