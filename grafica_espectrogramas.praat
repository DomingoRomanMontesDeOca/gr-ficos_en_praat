# Grafica los  nombres de los estudiantes.
# segundo momento, grafica el espectrograma
# guarda el gráfico con el nombre del archivo de audio

directorio_origen$ = chooseDirectory$ ("Elija directorio")

stringsSN = Create Strings as file list... lista_1 'directorio_origen$'/*.wav

ene_lista_sonidos = Get number of strings



for i to ene_lista_sonidos

	select stringsSN

	nombre_audio$ = Get string... i

	nombre_sin_wav$ = nombre_audio$ - ".wav"

	a = Read from file... 'directorio_origen$'/'nombre_audio$'

	fitrado = Filter (stop Hann band): 0, 75, 100

	Scale peak: 0.99
 
  	sptr = To Spectrogram: 0.005, 5000, 0.002, 20, "Gaussian"

	Erase all

	Select inner viewport: 0.5, 10.5, 0.5, 2.5

	Paint: 0, 0, 0, 0, 100, "yes", 50, 6, 0, "no"
 
 	 Draw inner box

	Select outer viewport: 0.5, 10.5, 0.5, 2.5

	Save as 300-dpi PNG file: "'directorio_origen$'/'nombre_sin_wav$'"+"_spt.png"

	select a
	plus sptr
	Remove

endfor
