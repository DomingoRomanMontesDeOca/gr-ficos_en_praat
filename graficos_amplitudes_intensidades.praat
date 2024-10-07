Line width: 1

a = Create Sound from formula: "500_025", 1, 0, 0.5, 22050, "0.25 * sin(2*pi*500*x)"
b = Create Sound from formula: "500_050", 1, 0, 0.5, 22050, "0.8 * sin(2*pi*500*x)"


select a


Select inner viewport: 1, 6, 0.5, 2

Erase all

Blue

Draw: 0, 0.1, -1, 1, "no", "curve"


Marks left every: 1, 0.25, "yes", "yes", "yes"

Draw inner box

Select outer viewport: 0.65, 6, 0.4, 2.1


pauseScript: "....."



select a
plus b
c = Concatenate

d = To Intensity: 100, 0, "yes"


inicio_del_concatenado = 0.5-0.05
fin_del_concatenado = 0.5 + 0.05

Select inner viewport: 1, 6, 0.5, 2

Erase all
select c
Draw: inicio_del_concatenado, fin_del_concatenado, -1, 1, "no", "curve"
Draw inner box
Text left: "yes", "Pa"

Marks left every: 1, 0.25, "yes", "yes", "yes"



Select inner viewport: 1, 6, 2, 4

select d

Line width: 3

Green

Draw: inicio_del_concatenado, fin_del_concatenado, 50, 100, "no"

Line width: 1

Draw inner box

Marks right every: 1, 10, "yes", "yes", "yes"

Text right: "yes", "dB"


Select outer viewport: 0.4, 6.6, 0.4, 4.1




