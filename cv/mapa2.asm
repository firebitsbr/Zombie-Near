        ;            
        ; Mapa 2 para Zombie Near
        ;
        ; por Oscar Toledo Gutierrez
        ;
        ; (c) Copyright 2011 Oscar Toledo Gutierrez
        ;
        ; Creaci�n: 16-ene-2011.
        ; Revisi�n: 17-ene-2011. Se pone el laberinto.
        ; Revisi�n: 18-ene-2011. Se agrega la chica esperando. Se decora el
        ;                        nivel completo (uff, son las 9:07pm).
        ; Revisi�n: 19-ene-2011. Se quita puerta bloqueada en 79.
        ; Revisi�n: 24-ene-2011. Se agrega piso 102.
        ; Revisi�n: 06-feb-2011. Se complica corredor intermedio.
        ; Revisi�n: 03-abr-2011. Se usan mosaicos 52 y 53. Se cambia el piso
        ;                        de pascua.
        ; Revisi�n: 04-abr-2011. Se usa mosaico 54.
        ; Revisi�n: 08-abr-2011. Se agregan m�quinas l�ser.
        ; Revisi�n: 02-jul-2013. Se agregan cuatro pisos extras para que las
        ;                        llaves puedan cambiar de lugar.
        ;

        ; 00 Piso de mosaicos (alterno 09)
        ; 10 Piso de mosaico diagonal (alterno 11)
        ; 01/12 Pared norte
        ; 02/13 Pared oeste
        ; 03/14 Pared este
        ; 04/15 Pared sur
        ; 05/16 Uni�n pared norte con oeste
        ; 06/17 Uni�n pared norte con este
        ; 07/18 Uni�n pared sur con oeste
        ; 08/19 Uni�n pared sur con este
        ; 20 Puerta oeste
        ; 21 Puerta norte
        ; 22 Escritorio vacio
        ; 23 Escritorio con papeles
        ; 24 Escritorio con PC apagado
        ; 25 Escritorio con matraces
        ; 26 M�quina de caf�
        ; 27 Librero
        ; 28 Armario
        ; 29 Armario semiabierto
        ; 30 Sanitario
        ; 31 Consola 1
        ; 32 Mesa de disecci�n.
        ; 33 Mesa de disecci�n con huesitos.
        ; 34 Mesa con herramientas de cirug�a.
        ; 35 Consola 2
        ; 40 Puerta sur
        ; 41 Escritorio con perro de peluche
        ; 42 Maceta con planta
        ; 43 Caja de cart�n
        ; 44 M�quina con zombie (sup. izq)
        ; 45 M�quina con zombie (sup. der)
        ; 46 M�quina con zombie (inf. izq)
        ; 47 M�quina con zombie (inf. der)
        ; 48 Puerta este
        ; 50 Pared sur 1 caminable
        ; 51 Pared sur 2 caminable
        ; 52 Escritorio con taza y dona
        ; 53 Piso con s�mbolo de biopeligro
        ; 54 Escritorio con PC encendido
        ; 55 Maceta con flores
        ; 56 Pared 1 norte con ventila
        ; 57 Pared 1 norte con pizarr�n
        ; 58 Caja de cart�n 2
        ; 59 Piso 1 para jefe (autom�tico, no usar)
        ; 60 Piso 2 para jefe (autom�tico, no usar)
        ; 61 M�quina l�ser (sup. izq)
        ; 62 M�quina l�ser (sup. der)
        ; 63 M�quina l�ser (inf. izq)
        ; 64 M�quina l�ser (inf. der)
        ; 65 C superior
        ; 66 C inferior
        ; 69 Amistoso zombie 5 mirando a la izquierda
        ; 70 Amistoso zombie 5 mirando a la derecha
        ; 71 Sost�n
        ; 72 Jefe esperando
        ; 73 Chica esperando
        ; 74 Puerta de habitaci�n de jefe (arriba)
        ; 75 Amistoso zombie 4 listo para surgir
        ; 76 Amistoso zombie 1 mirando hacia abajo
        ; 77 Amistoso zombie 1 mirando hacia arriba
        ; 78 Vida
        ; 79 Puerta de la habitaci�n del jefe 1 (abajo)
        ; 80 Amistoso zombie 3 mirando a la izq.
        ; 81 Amistoso zombie 3 mirando a la der.
        ; 82 Amistoso zombie 3 mirando arriba
        ; 83 Amistoso zombie 3 mirando abajo
        ; 84 Llave
        ; 85 Cient�fico
        ; 86 Cient�fica
        ; 87 Mancha de sangre
        ; 88 Medio esqueleto
        ; 89 Mano suelta
        ; 90 Amistoso zombie 1 mirando a la izq.
        ; 91 Amistoso zombie 1 mirando a la der.
        ; 92 Amistoso zombie 2 mirando a la izq.
        ; 93 Amistoso zombie 2 mirando a la der.
        ; 94 Amistoso zombie 2 mirando arriba
        ; 95 Amistoso zombie 2 mirando abajo
        ; 96 Puerta de la habitaci�n del jefe 2 (izq)
        ; 97 Puerta que se abre con llave
        ; 98 Puerta
        ; 
mapa2:
        ; Piso 1.
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 20,00,00,42,42,42,00,00,42,00,00,03
        db 02,00,00,42,76,00,42,00,42,09,00,03
        db 02,00,00,42,00,77,09,42,42,00,00,03
        db 02,00,09,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 2
        db 05,01,01,01,01,01,56,01,01,01,01,06
        db 02,00,00,00,90,00,00,00,42,42,00,03
        db 02,00,30,00,30,09,30,00,76,00,00,98
        db 02,09,00,00,00,00,00,00,00,77,00,03
        db 02,00,30,85,30,00,30,00,42,42,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 3
        db 05,01,01,01,01,01,01,57,01,01,56,06
        db 02,42,28,28,29,00,00,00,00,00,00,03
        db 98,00,00,09,00,00,00,92,00,09,00,03
        db 02,00,00,00,28,29,28,29,28,42,00,03
        db 02,00,00,00,00,00,90,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 4
        db 05,01,01,01,01,01,01,56,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,89,00,03
        db 02,00,00,30,00,30,85,30,00,00,30,03
        db 02,00,30,76,00,00,00,00,00,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,98,04,04,04,04,04,04,04,08
        ; Piso 5
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,30,00,30,00,30,00,30,00,00,03
        db 02,00,00,00,00,76,00,00,00,00,00,98
        db 02,00,30,00,00,00,00,00,30,00,00,03
        db 02,00,00,00,00,00,00,88,00,00,77,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 6
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,30,00,30,00,30,86,30,00,03
        db 98,00,00,00,90,00,00,00,90,00,00,03
        db 02,00,00,30,00,30,00,30,00,84,00,03
        db 02,00,91,00,00,00,91,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 7
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,54,54,24,10,10,24,24,52,10,14
        db 13,10,10,10,10,76,10,10,11,10,10,98
        db 13,10,24,23,25,10,10,54,54,54,10,14
        db 13,10,10,11,10,10,10,10,10,10,77,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 8
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,22,24,23,10,10,31,35,31,35,31,14
        db 98,10,10,10,11,10,10,10,10,10,10,98
        db 13,10,54,54,24,10,10,24,54,24,10,14
        db 13,10,10,10,10,10,10,10,11,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 9
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,35,35,35,35,31,35,35,31,35,35,14
        db 98,10,10,10,10,90,10,90,10,11,10,14
        db 13,10,10,35,31,35,35,31,10,11,10,98
        db 13,10,91,10,91,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 10
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,44,45,10,10,11,10,14
        db 13,10,10,35,35,46,47,35,35,10,10,14
        db 98,10,10,10,10,92,10,10,11,10,10,14
        db 13,93,10,10,11,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,98,15,15,15,15,19
        ; Piso 11.
        db 05,01,01,01,01,98,01,01,57,01,01,06
        db 02,42,22,54,22,00,24,24,22,42,42,03
        db 02,00,00,00,92,00,00,00,00,00,00,98
        db 02,00,54,24,54,22,24,24,54,00,00,03
        db 02,00,00,00,00,93,00,00,00,00,43,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 12
        db 05,01,01,01,01,01,01,01,57,01,01,06
        db 02,22,24,22,54,54,24,24,22,22,42,03
        db 98,00,00,00,09,00,00,75,00,00,00,03
        db 02,00,00,09,00,90,00,00,00,00,00,98
        db 02,00,09,00,00,00,00,00,00,00,42,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 13
        db 05,01,01,01,01,98,56,01,57,01,01,06
        db 02,43,43,58,43,00,00,09,00,00,42,03
        db 02,00,00,00,00,00,00,00,09,00,42,03
        db 98,00,00,09,00,00,00,09,00,00,42,03
        db 02,00,00,00,00,00,43,43,43,43,42,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 14
        db 05,01,01,98,01,01,01,01,01,01,01,06
        db 02,42,00,00,28,29,28,29,28,29,26,03
        db 02,00,09,00,00,92,00,00,00,92,09,03
        db 02,00,00,00,29,28,28,28,28,28,00,98
        db 02,00,00,93,00,09,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,98,04,04,08
        ; Piso 15
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,91,00,09,00,03
        db 02,28,28,29,28,00,00,29,28,28,28,03
        db 98,00,00,00,90,00,09,00,00,00,80,03
        db 02,00,00,00,00,00,00,00,09,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 16
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,75,54,24,54,24,10,10,10,14
        db 13,75,10,10,11,11,11,11,10,10,10,14
        db 13,10,24,24,11,11,11,11,24,24,10,98
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 17
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,54,54,10,10,10,10,10,24,24,10,14
        db 13,10,10,10,11,10,10,10,11,10,10,14
        db 98,10,10,10,54,54,24,24,10,83,10,14
        db 13,10,88,11,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 18
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,31,35,31,10,14
        db 13,10,10,10,10,10,10,10,10,92,10,14
        db 13,10,31,35,31,35,10,10,10,10,10,14
        db 13,10,93,10,10,10,10,10,10,10,42,14
        db 18,15,15,15,15,15,98,15,15,15,15,19
        ; Piso 19
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,91,10,10,10,76,10,10,10,10,14
        db 13,10,10,10,11,10,10,10,10,10,10,98
        db 13,35,35,35,10,10,10,11,41,11,10,14
        db 13,10,86,10,10,10,10,10,10,10,42,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 20
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,31,28,27,10,10,10,29,27,35,10,14
        db 98,10,11,10,10,10,10,10,11,10,10,14
        db 13,10,10,22,23,25,10,25,25,23,10,14
        db 13,10,10,10,10,10,10,10,10,11,80,14
        db 18,15,15,15,15,15,98,15,15,15,15,19
        ; Piso 21
        db 05,01,01,56,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,41,86,41,42,03
        db 02,00,00,00,00,09,00,00,00,90,00,03
        db 02,00,00,91,00,00,09,00,00,00,00,03
        db 02,00,00,00,00,00,00,00,00,88,00,03
        db 07,98,04,04,04,04,04,04,04,04,04,08
        ; Piso 22
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,27,27,27,27,00,27,27,27,27,26,03
        db 02,00,00,00,00,00,00,90,00,00,00,03
        db 02,00,22,22,00,00,00,23,23,00,00,03
        db 02,00,00,00,91,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 23
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,90,00,00,03
        db 02,00,00,00,43,86,43,00,00,09,00,03
        db 02,00,00,91,00,00,00,69,00,00,00,03
        db 02,00,09,00,00,00,88,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 24
        db 05,01,01,01,01,56,01,01,98,01,01,06
        db 02,00,28,29,28,00,00,09,00,00,00,03
        db 02,00,09,00,00,76,00,29,29,28,00,03
        db 02,28,28,28,00,00,77,00,00,00,00,03
        db 02,00,00,00,09,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 25
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,11,10,10,10,10,10,90,10,10,14
        db 13,10,27,85,27,10,10,11,10,10,10,98
        db 13,10,10,10,10,10,90,10,10,10,10,14
        db 13,10,27,78,27,10,10,10,10,11,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 26
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,26,11,27,27,10,27,27,11,10,26,14
        db 98,10,10,11,10,10,90,11,10,10,10,14
        db 13,10,10,27,27,10,27,27,10,87,10,14
        db 13,10,91,10,10,11,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 27
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,27,27,27,31,35,31,31,35,35,42,14
        db 13,10,10,10,10,10,92,10,92,10,10,98
        db 13,10,35,31,31,31,10,35,31,35,10,14
        db 13,93,10,93,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 28
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,10,10,10,76,10,10,10,69,10,26,14
        db 98,10,10,87,10,10,11,10,10,10,10,14
        db 13,10,11,10,10,10,10,10,88,10,10,14
        db 13,10,10,10,10,10,10,11,10,89,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 29
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,43,11,10,10,10,10,89,14
        db 13,10,10,84,58,11,10,10,10,10,10,14
        db 13,10,10,10,81,11,10,58,10,10,10,98
        db 13,10,10,10,10,11,10,43,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 30
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,35,10,31,10,10,10,11,35,10,31,14
        db 13,10,10,10,10,11,10,10,10,10,10,14
        db 98,10,10,10,35,10,31,10,31,10,10,14
        db 13,10,10,10,10,10,10,10,10,11,82,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 31
        db 05,98,01,01,01,01,01,01,01,01,01,06
        db 02,00,28,29,28,28,28,29,29,28,42,03
        db 02,00,00,00,91,00,00,00,00,00,00,98
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 02,58,43,58,43,43,00,00,94,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,98,08
        ; Piso 32
        db 05,01,01,01,01,01,98,01,01,01,01,06
        db 02,26,27,27,27,42,00,27,27,27,27,03
        db 98,00,00,00,00,00,00,92,00,00,00,03
        db 02,00,23,54,00,00,00,00,23,22,09,03
        db 02,00,00,93,00,00,00,00,00,09,09,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 33
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 02,00,43,43,00,77,00,00,00,58,00,03
        db 02,00,00,00,43,76,00,58,58,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,42,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 34
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,95,00,00,00,09,03
        db 02,00,27,29,29,28,00,27,27,29,00,97
        db 02,00,00,00,00,00,09,00,00,00,00,03
        db 02,00,42,00,00,00,00,00,00,09,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 35
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,42,10,31,31,31,35,31,83,10,29,14
        db 20,10,10,10,10,10,10,10,10,11,10,14
        db 13,10,10,35,10,31,10,35,10,10,10,98
        db 13,10,11,10,10,10,10,10,10,80,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 36
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,10,10,10,97
        db 13,10,10,11,10,11,10,11,10,11,10,14
        db 96,10,11,10,11,10,11,10,11,10,10,14
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 37
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 20,10,10,10,10,10,10,10,10,44,45,14
        db 13,10,10,35,31,10,10,35,31,46,47,14
        db 13,10,10,10,10,92,10,10,10,10,10,14
        db 13,10,10,10,10,10,10,93,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 38
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,43,10,10,10,10,10,10,10,14
        db 13,10,10,11,10,10,10,10,11,10,10,98
        db 13,10,86,58,10,10,42,10,10,11,10,14
        db 13,78,10,43,10,10,10,94,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 39
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,88,27,10,27,10,27,10,27,10,10,14
        db 98,10,10,10,10,81,10,10,10,11,10,98
        db 13,10,27,10,29,10,28,10,27,10,10,14
        db 13,10,10,11,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 40
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,28,28,29,10,10,27,27,27,10,14
        db 98,10,10,91,10,10,10,11,10,10,10,14
        db 13,10,27,27,27,10,10,28,29,28,10,14
        db 13,10,11,10,10,10,10,10,90,11,10,14
        db 18,15,15,15,15,15,98,15,15,15,15,19
        ; Piso 41
        db 05,01,01,01,01,01,01,01,01,01,98,06
        db 02,00,00,00,00,00,09,00,00,00,00,03
        db 02,00,00,89,00,00,00,43,58,43,00,03
        db 02,00,43,43,43,58,58,43,43,58,00,03
        db 02,00,09,00,00,00,09,00,87,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 42
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,24,24,24,00,24,54,24,24,43,03
        db 02,00,00,09,09,09,00,00,92,00,00,03
        db 02,42,24,23,22,00,52,54,54,25,24,03
        db 02,00,00,93,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 58
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,90,00,00,42,03
        db 02,00,29,28,29,00,91,00,00,00,00,98
        db 02,00,00,00,00,90,00,28,28,28,00,03
        db 02,42,00,91,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 44
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,93,00,43,43,00,09,00,00,92,00,03
        db 98,00,00,58,58,00,00,43,43,43,09,03
        db 02,00,09,00,00,00,00,00,43,58,00,03
        db 02,00,00,00,00,90,00,00,00,00,00,03
        db 07,04,04,98,04,04,04,04,98,04,04,08
        ; Piso 45
        db 05,01,01,01,01,01,01,01,01,01,56,06
        db 02,86,44,45,00,00,00,00,00,09,00,03
        db 02,00,46,47,00,00,09,00,69,00,00,98
        db 02,00,00,00,90,00,00,00,00,00,00,03
        db 02,00,00,00,00,00,00,91,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 46
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,34,33,00,34,34,34,00,32,32,03
        db 98,00,09,00,91,00,00,00,09,00,00,03
        db 02,00,34,33,00,34,33,00,34,33,00,03
        db 02,00,00,00,09,00,00,90,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 47
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,35,31,10,14
        db 13,10,35,31,10,31,35,10,11,10,10,98
        db 13,10,11,10,10,10,10,10,10,10,10,14
        db 13,10,10,10,10,11,10,10,10,22,41,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 48
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,35,31,35,35,35,35,35,35,10,14
        db 98,10,10,10,10,90,91,10,10,11,10,98
        db 13,10,31,31,31,31,35,31,31,31,10,14
        db 13,10,10,89,10,11,10,10,88,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 49
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,29,31,31,35,35,35,35,31,31,42,14
        db 98,10,10,11,10,87,10,11,10,76,10,98
        db 13,10,10,35,31,31,31,35,31,10,10,14
        db 13,10,77,10,10,11,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 50
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,10,27,27,27,10,10,27,27,27,26,14
        db 98,10,10,10,93,10,11,10,10,10,10,14
        db 13,10,27,27,10,10,10,10,27,42,10,14
        db 13,10,10,10,11,10,10,10,92,10,10,14
        db 18,15,15,15,15,15,98,15,15,15,15,19
        ; Piso 51
        db 05,01,01,01,01,98,57,01,01,01,01,06
        db 02,00,93,00,00,09,00,00,00,00,00,03
        db 02,00,00,29,29,28,29,28,29,00,00,03
        db 02,00,00,00,00,00,00,09,00,92,00,03
        db 02,42,58,85,58,00,00,00,43,58,58,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 52
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,22,22,23,23,00,23,23,22,22,52,03
        db 02,00,09,00,00,77,00,00,09,00,00,03
        db 02,00,00,41,25,76,27,27,28,29,00,03
        db 02,00,88,00,00,00,00,69,00,09,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 53
        db 05,01,01,01,01,98,01,01,01,01,56,06
        db 02,93,00,00,00,00,43,00,00,09,00,03
        db 02,00,43,28,58,28,43,09,58,28,00,03
        db 02,00,43,00,00,00,92,00,58,00,00,03
        db 02,00,00,09,00,00,00,00,43,00,78,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 54
        db 05,01,01,98,01,01,01,01,98,01,01,06
        db 02,28,28,00,29,28,29,28,00,28,28,03
        db 02,00,00,00,00,00,00,00,90,00,00,03
        db 02,00,00,00,43,58,58,43,00,00,00,03
        db 02,00,91,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,40,04,04,04,04,04,08
        ; Piso 55
        db 05,01,01,01,01,98,01,01,57,01,01,06
        db 02,44,45,34,33,00,44,45,00,44,45,03
        db 02,46,47,00,92,00,46,47,09,46,47,03
        db 02,00,00,00,09,00,00,00,00,92,00,03
        db 02,00,00,93,00,00,00,00,00,09,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 56
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,32,00,32,00,33,00,32,00,33,03
        db 02,00,00,00,77,00,00,09,00,00,00,98
        db 02,33,00,32,00,32,77,33,00,32,00,03
        db 02,00,09,00,00,00,00,00,77,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 57
        db 05,01,01,01,56,01,01,01,01,01,01,06
        db 02,00,34,32,00,00,00,00,00,00,00,03
        db 98,00,00,00,00,09,00,34,32,00,00,48
        db 02,00,34,32,81,00,00,00,09,00,00,03
        db 02,00,00,09,00,00,00,34,33,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 58
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,42,10,42,10,28,29,28,28,28,27,14
        db 97,10,10,10,10,91,10,91,10,11,10,98
        db 13,42,10,42,10,10,10,11,10,10,10,14
        db 13,10,10,11,10,10,10,10,10,41,42,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 59
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,91,10,10,10,11,10,10,14
        db 98,10,10,90,10,10,10,28,85,29,10,14
        db 13,10,11,10,10,90,10,10,11,10,10,14
        db 13,10,91,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 60
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,28,29,26,10,10,10,10,26,10,10,14
        db 13,10,10,10,10,11,10,10,10,10,82,14
        db 13,10,26,10,26,10,10,11,26,10,10,14
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,98,15,15,15,15,15,15,19
        ; Piso 61
        db 05,01,01,01,01,01,01,01,56,01,01,06
        db 02,26,00,26,00,26,00,26,00,26,42,03
        db 02,00,00,00,00,00,09,00,00,00,00,98
        db 02,00,00,00,89,00,00,00,00,09,00,03
        db 02,00,00,00,00,93,00,00,00,00,00,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 62
        db 05,01,01,01,01,98,01,57,01,01,01,06
        db 02,00,76,00,00,00,00,00,00,00,26,03
        db 98,00,00,42,42,00,42,42,00,00,00,98
        db 02,42,00,09,00,00,00,09,77,42,00,03
        db 02,00,00,42,42,00,42,42,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 63
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,93,00,00,00,00,00,00,03
        db 98,00,00,42,42,42,42,42,42,00,00,03
        db 02,00,00,00,00,00,00,88,42,00,00,03
        db 02,00,00,92,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 64
        db 05,01,01,01,01,97,01,01,01,56,01,06
        db 02,42,00,42,00,00,00,00,42,00,42,03
        db 02,00,00,00,00,42,42,00,75,00,00,03
        db 02,00,75,00,00,53,00,00,00,00,00,03
        db 02,00,00,00,00,00,00,00,09,00,89,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 65
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,93,00,00,00,00,09,00,00,00,03
        db 02,00,44,45,00,44,45,00,44,45,09,03
        db 02,00,46,47,09,46,47,00,46,47,00,98
        db 02,00,00,92,00,00,00,92,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 66
        db 05,01,01,57,01,01,01,01,01,01,01,06
        db 02,00,09,00,00,00,00,00,80,00,09,03
        db 02,00,00,44,45,00,09,44,45,00,00,03
        db 98,00,00,46,47,00,00,46,47,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,89,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 67
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,32,00,33,00,00,32,00,33,00,33,03
        db 02,00,00,00,09,77,00,00,00,92,00,03
        db 02,00,33,00,33,76,33,09,33,00,00,03
        db 02,00,93,00,00,00,00,00,00,00,09,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 68
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,24,24,54,54,10,10,31,31,35,10,14
        db 13,10,10,93,10,10,10,10,10,10,10,14
        db 13,54,24,23,54,10,10,11,10,92,10,98
        db 13,10,10,11,10,94,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 69
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,31,25,24,54,23,22,35,10,10,14
        db 13,10,10,11,10,93,10,10,10,10,10,98
        db 98,10,10,10,10,10,10,11,10,10,10,14
        db 13,10,10,10,10,10,10,92,11,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 70
        db 16,12,12,12,98,12,12,12,12,12,12,17
        db 13,10,10,10,10,27,22,54,23,22,25,14
        db 98,89,10,10,10,10,11,10,10,10,10,14
        db 13,10,11,10,10,10,43,10,43,10,58,14
        db 13,10,10,10,11,10,10,58,10,58,58,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 71
        db 05,01,01,01,01,01,98,01,01,01,01,06
        db 02,28,29,28,00,09,00,00,29,28,27,03
        db 02,00,76,00,00,00,00,00,00,00,00,03
        db 02,00,00,24,78,24,54,23,54,09,00,03
        db 02,89,00,00,09,00,00,00,00,77,42,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 72
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,90,00,00,00,03
        db 02,00,42,00,42,00,42,00,42,87,00,03
        db 02,00,42,00,42,00,42,00,42,00,00,03
        db 02,00,00,91,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 73
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,00,00,09,00,00,00,00,00,00,00,03
        db 02,42,42,91,00,42,42,00,00,42,42,03
        db 02,00,00,00,00,42,09,00,00,92,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,98,04,04,04,04,04,04,08
        ; Piso 74
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,29,00,75,00,00,00,00,00,09,87,03
        db 02,00,09,00,00,53,00,75,00,00,00,03
        db 02,00,00,28,28,29,28,29,28,28,75,03
        db 02,00,00,00,09,00,00,00,75,00,00,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 75
        db 05,01,56,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,30,76,30,00,09,00,00,03
        db 02,00,30,85,00,00,00,30,78,30,00,03
        db 02,00,00,00,30,76,30,00,09,00,00,03
        db 02,00,09,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 76
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,44,45,00,34,33,00,00,34,33,41,03
        db 02,46,47,00,00,00,09,00,00,00,00,98
        db 02,81,00,00,34,33,00,00,34,32,00,03
        db 02,34,33,00,00,00,00,00,00,09,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 77
        db 05,01,56,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,93,00,00,03
        db 98,00,09,54,00,44,45,00,52,00,00,98
        db 02,00,00,00,00,46,47,00,00,09,00,03
        db 02,00,00,92,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 78
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,33,33,33,33,33,33,32,33,33,32,03
        db 98,00,00,00,90,91,00,09,00,00,00,03
        db 02,00,33,32,32,32,33,33,33,09,00,98
        db 02,00,00,09,00,00,90,91,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 79
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,34,34,00,34,34,00,34,32,00,03
        db 02,00,00,00,00,09,00,00,91,00,00,98
        db 98,00,00,90,00,00,00,00,00,09,00,03
        db 02,00,34,34,00,00,34,00,32,34,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 80
        db 05,01,01,01,01,01,01,01,56,01,01,06
        db 02,00,00,87,00,00,09,00,00,42,42,03
        db 98,00,09,00,00,00,00,00,00,61,62,03
        db 02,42,00,00,00,00,00,00,00,63,64,03
        db 02,42,42,00,87,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 81
        db 05,01,01,57,01,01,98,01,01,01,01,06
        db 02,27,27,00,27,27,00,00,27,27,42,03
        db 02,00,00,90,00,09,00,90,00,09,00,03
        db 02,00,24,24,23,22,25,24,54,41,00,98
        db 02,00,09,00,91,00,00,00,91,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 82
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,42,00,00,00,00,00,09,69,00,00,03
        db 02,00,00,92,00,00,76,00,42,42,00,03
        db 98,00,00,00,00,00,09,00,00,85,00,03
        db 02,00,00,09,00,00,00,00,42,42,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 83
        db 05,01,01,01,98,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,92,00,00,00,00,03
        db 02,00,00,42,42,00,00,42,42,00,00,03
        db 02,00,00,42,42,41,86,42,42,00,00,03
        db 02,00,00,00,93,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 84
        db 05,01,01,01,01,01,98,01,01,01,01,06
        db 02,00,00,88,00,00,00,00,00,09,28,03
        db 02,00,09,00,28,29,28,29,00,75,00,03
        db 02,75,00,00,00,53,00,00,09,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 85
        db 05,01,01,56,01,98,01,01,01,01,01,06
        db 02,42,42,00,00,00,00,00,28,28,29,03
        db 02,42,00,93,09,00,00,00,00,00,00,98
        db 02,42,00,00,00,00,09,28,28,28,00,03
        db 02,42,42,00,00,00,00,92,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 86
        db 05,01,01,01,01,01,01,01,01,56,01,06
        db 02,00,28,28,28,29,00,54,27,00,26,03
        db 98,00,00,09,92,00,00,09,00,00,00,98
        db 02,00,28,28,29,28,00,23,24,00,00,03
        db 02,00,00,00,00,09,00,93,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 87
        db 05,01,01,57,01,98,01,01,01,01,01,06
        db 02,42,00,00,00,00,00,00,90,00,00,03
        db 98,00,00,31,31,00,44,45,00,61,62,03
        db 02,00,00,00,00,00,46,47,00,63,64,03
        db 02,42,91,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 88
        db 05,57,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,43,43,03
        db 02,00,09,00,58,85,58,00,00,58,43,03
        db 02,58,00,94,00,00,00,95,00,00,00,03
        db 02,58,00,00,00,00,00,09,58,09,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 89
        db 05,01,01,01,01,98,01,01,01,56,01,06
        db 02,58,00,89,00,00,00,00,00,00,58,03
        db 02,00,00,09,00,00,00,00,87,09,00,03
        db 02,43,58,00,43,58,43,58,43,43,00,03
        db 02,58,58,00,00,00,00,00,00,86,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 90
        db 05,01,01,56,01,98,56,01,01,01,01,06
        db 02,00,00,00,00,00,00,90,00,09,00,03
        db 02,00,00,34,32,00,34,33,00,90,00,03
        db 02,09,91,00,00,00,00,00,00,00,00,03
        db 02,00,00,91,00,00,09,00,00,00,42,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 91
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,87,00,00,26,03
        db 02,00,00,88,00,53,00,00,00,09,00,03
        db 02,00,00,27,00,09,00,00,00,00,00,03
        db 02,00,00,00,00,00,70,00,89,00,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 92
        db 05,01,01,01,56,56,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,00,42,03
        db 02,00,00,00,00,53,00,89,00,00,00,98
        db 02,00,00,89,00,00,00,00,00,00,00,03
        db 98,00,00,00,69,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,50,04,04,04,04,08
        ; Piso 93
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,09,00,00,00,00,03
        db 96,00,00,00,00,09,00,09,00,00,00,03
        db 02,00,00,00,09,00,00,00,09,00,00,03
        db 02,00,00,09,00,00,00,00,00,09,00,97
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 94
        db 05,01,57,01,56,98,01,01,01,01,01,06
        db 02,75,09,00,00,00,00,25,25,22,23,03
        db 02,00,00,00,00,53,09,00,00,00,00,03
        db 02,00,00,09,00,00,00,00,84,00,00,03
        db 20,00,00,00,00,00,00,22,23,25,25,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 95
        db 05,57,01,01,01,98,01,01,01,01,01,06
        db 02,00,09,00,00,00,00,90,00,09,00,03
        db 02,00,00,00,91,00,00,69,00,00,00,03
        db 02,00,31,54,22,54,54,22,22,35,88,03
        db 02,00,00,00,00,86,00,09,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 96
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,42,42,42,00,42,42,42,00,28,29,03
        db 02,42,00,42,00,00,42,00,00,00,00,03
        db 02,42,00,42,00,00,42,00,89,00,00,98
        db 02,42,42,42,00,00,42,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 97
        db 05,01,57,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,75,00,00,03
        db 02,00,42,42,42,53,00,00,00,00,00,03
        db 98,00,00,00,00,00,09,42,42,42,00,98
        db 02,00,00,75,00,09,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 98
        db 05,01,01,01,56,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,42,75,00,03
        db 02,00,00,42,00,53,09,00,42,00,00,03
        db 98,00,00,42,00,00,00,09,00,00,00,98
        db 02,00,00,00,75,09,09,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 99
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,42,75,00,00,00,00,00,88,03
        db 02,00,00,42,00,53,00,00,00,00,00,03
        db 98,00,00,00,00,00,09,00,42,00,00,98
        db 02,00,00,00,00,09,00,75,42,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 100
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,75,00,87,03
        db 02,00,00,09,00,53,89,42,42,00,00,03
        db 98,00,00,42,42,09,00,00,69,00,00,98
        db 02,00,88,75,00,00,00,00,00,09,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 101
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 13,11,11,11,11,11,11,11,11,11,11,14
        db 20,10,10,10,10,10,10,73,10,10,10,97
        db 13,11,11,11,11,11,11,11,11,11,11,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 102 (huevo de pascua)
        db 05,01,57,01,01,01,98,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,00,78,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 02,00,00,78,00,78,00,00,00,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 103 (reemplaza 6)
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,30,00,30,00,30,86,30,00,03
        db 98,00,00,00,90,00,00,00,90,00,00,03
        db 02,00,00,30,00,30,00,30,00,00,00,03
        db 02,00,91,00,00,00,91,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 104 (reemplaza 23)
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,84,00,00,00,90,00,00,03
        db 02,00,00,00,43,86,43,00,00,09,00,03
        db 02,00,00,91,00,00,00,69,00,00,00,03
        db 02,00,09,00,00,00,88,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 105 (reemplaza 29)
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,43,11,10,10,10,10,89,14
        db 13,10,10,10,58,11,10,10,10,10,10,14
        db 13,10,10,10,81,11,10,58,10,10,10,98
        db 13,10,10,10,10,11,10,43,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 106 (reemplaza 25)
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,11,10,10,10,10,10,90,10,10,14
        db 13,10,27,85,27,10,10,11,10,10,10,98
        db 13,10,10,10,10,10,90,10,10,10,10,14
        db 13,84,27,78,27,10,10,10,10,11,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19