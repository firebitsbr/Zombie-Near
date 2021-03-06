        ;            
        ; Mapa 1 para Zombie Near
        ;
        ; por Oscar Toledo Gutierrez
        ;
        ; (c) Copyright 2011 Oscar Toledo Gutierrez
        ;
        ; Creaci�n: 06-ene-2011.
        ; Revisi�n: 07-ene-2011. Se cambia concepto a laberinto, mapa
        ;                        preliminar listo.
        ; Revisi�n: 08-ene-2011. Se ponen mueblecitos, llaves y cient�ficos
        ;                        en el mapa.
        ; Revisi�n: 09-ene-2011. Se ponen vidas en el mapa.
        ; Revisi�n: 14-ene-2011. Las banderas de caminable se ponen en el
        ;                        m�dulo principal.
        ; Revisi�n: 15-ene-2011. Se agrega piso especial para examinar
        ;                        gr�ficas.
        ; Revisi�n: 16-ene-2011. A partir de ahora es el mapa 1.
        ;

        ; 00 Piso de mosaicos (alterno 09)
        ; 10 Piso de mosaico diagonal (alterno 11)
        ; 01/12 Pared norte
        ; 02/13 Pared oeste
        ; 03/14 Pared sur
        ; 04/15 Pared este
        ; 05/16 Uni�n pared norte con oeste
        ; 06/17 Uni�n pared norte con este
        ; 07/18 Uni�n pared sur con oeste
        ; 08/19 Uni�n pared sur con este
        ; 20 Puerta oeste
        ; 21 Puerta norte
        ; 22 Escritorio vacio
        ; 23 Escritorio con papeles
        ; 24 Escritorio con PC
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
        ; 99 Punto de inicio
        ; 
mapa1:
    if 0
        ; Piso para an�lisis gr�ficas.
        db 00,01,02,03,04,05,06,07,08,09,10,11
        db 12,00,13,14,15,16,17,18,19,20,21,22
        db 23,24,25,26,27,28,29,30,31,32,33,34
        db 35,36,37,38,39,40,41,42,43,00,44,45
        db 02,00,00,00,00,91,00,00,00,00,46,47
        db 07,04,04,04,04,04,04,04,04,04,04,08
    else
        ; Piso 1.
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 20,00,22,00,22,00,23,00,22,00,00,03
        db 02,00,00,00,09,00,00,00,00,00,00,03
        db 02,00,22,00,24,00,23,00,23,00,00,03
        db 02,00,00,00,00,91,00,00,00,00,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
    endif
        ; Piso 2
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,24,00,24,00,24,00,24,86,42,03
        db 02,00,00,00,91,00,00,09,00,00,00,98
        db 02,00,00,23,00,22,23,00,22,23,00,03
        db 98,00,00,00,00,00,90,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 3
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,22,00,22,00,22,00,00,00,26,03
        db 98,00,00,00,91,00,00,09,23,00,00,03
        db 02,00,00,09,00,90,00,00,23,00,00,03
        db 02,00,22,00,22,00,22,00,00,00,90,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 4
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,42,30,85,09,30,00,00,30,00,00,98
        db 02,00,90,00,00,00,00,00,90,00,00,03
        db 02,00,30,00,00,30,00,00,30,00,00,03
        db 02,00,00,00,91,00,09,00,91,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 5
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 98,00,00,28,29,28,00,29,28,29,00,98
        db 02,00,09,00,00,00,93,00,00,00,00,03
        db 02,00,00,29,28,29,00,29,28,28,00,03
        db 02,00,00,00,90,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 6
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 98,00,27,09,27,00,43,43,27,00,26,03
        db 02,00,00,90,00,00,00,91,09,00,00,03
        db 02,00,27,27,27,00,27,00,27,00,00,03
        db 02,00,00,09,91,00,90,00,00,00,00,03
        db 07,98,04,04,04,04,04,04,04,04,04,08
        ; Piso 7
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,28,28,28,29,28,28,28,28,26,26,03
        db 02,00,00,00,00,00,00,95,00,00,95,03
        db 02,00,22,22,23,22,22,00,00,00,00,98
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 8
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,29,28,00,00,00,00,28,28,00,00,03
        db 02,00,09,00,29,29,00,00,00,92,00,98
        db 98,00,00,00,00,00,00,92,00,09,29,03
        db 02,00,00,00,00,00,92,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 9
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,28,00,00,28,95,00,28,00,00,03
        db 98,00,00,29,00,00,00,29,00,00,00,03
        db 02,00,00,09,00,00,00,00,92,00,00,03
        db 02,00,00,00,28,00,28,00,00,00,00,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 10
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,84,00,00,00,00,00,00,00,00,92,03
        db 02,00,00,88,00,00,00,09,91,43,00,03
        db 02,00,00,00,00,00,92,00,43,87,00,03
        db 02,00,00,09,90,89,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 11.
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,27,00,27,00,28,00,27,00,27,00,98
        db 02,00,00,90,00,00,00,00,09,00,00,03
        db 02,00,09,00,23,22,00,00,00,00,00,03
        db 02,00,00,00,00,91,09,00,00,00,00,03
        db 07,98,04,04,04,04,04,04,04,04,04,08
        ; Piso 12
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 98,00,27,00,27,00,27,00,28,00,27,03
        db 02,00,00,90,00,09,00,00,00,09,00,03
        db 02,00,00,22,23,00,90,09,00,00,00,03
        db 02,00,00,09,00,00,91,00,00,00,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 13
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,27,00,27,00,27,00,00,09,27,28,03
        db 02,00,09,90,00,00,00,00,00,00,00,03
        db 02,00,22,23,22,24,22,23,22,00,00,98
        db 98,00,00,00,09,00,91,09,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 14
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,27,27,00,00,27,27,00,00,27,27,03
        db 02,00,09,90,00,00,00,00,09,00,00,03
        db 98,00,00,91,00,27,27,00,90,00,00,98
        db 02,00,00,00,00,91,00,00,00,09,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 15
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,27,00,27,27,27,00,27,27,00,26,03
        db 02,00,90,09,00,00,90,09,00,00,00,03
        db 98,00,00,27,27,00,27,27,27,09,00,98
        db 02,00,00,00,91,09,00,91,00,00,00,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 16
        db 05,98,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,09,00,00,87,00,00,00,00,03
        db 02,27,27,27,27,27,27,27,27,00,00,03
        db 98,00,00,00,09,90,00,91,00,00,00,03
        db 02,00,00,00,00,00,91,00,90,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 17
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,28,28,28,28,00,29,28,28,28,00,03
        db 02,00,90,00,00,09,00,00,09,91,00,03
        db 02,28,29,28,28,00,28,28,28,28,00,03
        db 02,00,00,00,90,00,00,00,91,00,09,03
        db 07,04,04,04,04,04,04,04,04,98,04,08
        ; Piso 18
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,90,00,00,00,00,88,03
        db 02,00,30,09,85,30,00,00,30,00,00,03
        db 02,00,00,00,00,00,09,78,00,00,00,03
        db 02,00,30,00,30,00,30,00,30,93,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 19
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,00,28,29,00,28,00,09,00,43,43,03
        db 02,00,00,00,00,00,00,00,90,09,91,98
        db 02,00,00,29,28,09,00,28,29,00,00,03
        db 02,00,00,09,90,00,91,00,00,00,00,03
        db 07,04,04,98,04,04,04,04,04,04,04,08
        ; Piso 20
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,29,28,00,00,90,28,29,00,00,03
        db 98,00,00,00,00,00,00,90,00,00,00,03
        db 02,00,00,90,09,28,28,00,00,00,00,03
        db 02,00,00,00,00,00,00,91,09,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 21
        db 05,98,01,01,01,01,01,01,01,01,01,06
        db 02,00,95,23,23,42,22,22,25,00,00,03
        db 02,00,09,90,00,09,00,00,00,94,00,03
        db 02,00,00,25,24,23,00,23,22,09,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 22
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,09,09,09,92,00,00,00,92,00,03
        db 02,00,29,86,28,78,29,00,28,43,00,03
        db 02,00,00,00,00,00,00,90,43,00,00,03
        db 02,00,00,93,00,93,00,09,00,00,09,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 23
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,42,23,22,24,00,24,22,23,22,25,03
        db 02,00,92,09,00,00,00,00,92,00,00,03
        db 02,00,27,27,00,00,09,00,27,27,00,03
        db 02,00,09,00,91,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 24
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,86,22,23,41,24,24,24,25,22,23,03
        db 02,00,00,90,00,00,00,09,90,00,00,03
        db 02,43,00,09,24,00,00,24,00,00,09,03
        db 02,43,00,00,91,00,00,91,00,00,00,03
        db 07,04,04,04,04,04,04,04,98,04,04,08
        ; Piso 25
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,00,00,00,09,00,00,00,92,00,00,03
        db 02,89,22,23,41,23,23,22,23,22,00,98
        db 02,00,25,25,22,23,25,25,23,23,00,03
        db 02,00,09,00,00,00,93,00,00,00,00,03
        db 07,04,04,04,04,04,04,98,04,04,04,08
        ; Piso 26
        db 05,01,01,01,01,01,01,01,01,06,01,06
        db 02,42,28,28,29,00,00,28,29,03,28,03
        db 98,00,00,00,00,90,00,90,00,03,00,98
        db 02,00,09,00,00,04,04,04,04,08,00,03
        db 02,00,00,00,00,00,00,00,90,00,90,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 27
        db 05,01,01,01,01,01,01,01,01,98,01,06
        db 02,00,09,00,00,00,09,00,87,00,00,03
        db 98,00,05,01,01,01,01,01,01,01,01,06
        db 02,00,02,00,09,00,00,00,09,92,00,98
        db 02,00,00,88,00,00,93,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 28
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,90,00,00,00,29,29,29,29,03
        db 02,28,28,28,28,00,00,00,09,91,00,03
        db 98,00,00,90,00,09,00,29,28,28,00,98
        db 02,00,09,00,00,00,00,00,00,92,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 29
        db 05,01,01,98,01,01,01,01,01,01,01,06
        db 02,00,93,00,00,00,28,28,28,29,26,03
        db 02,00,00,00,09,00,00,00,00,00,00,03
        db 98,00,09,29,28,28,28,87,00,00,00,03
        db 02,00,00,00,00,00,00,92,09,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 30
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,90,00,00,00,03
        db 02,00,28,85,29,28,28,29,28,29,00,03
        db 02,00,00,00,00,00,00,90,00,09,00,03
        db 02,00,09,00,00,88,00,00,91,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 31
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,27,27,22,27,00,00,27,27,24,27,03
        db 02,00,00,90,00,00,90,00,00,00,00,03
        db 02,00,24,24,24,24,00,24,24,24,00,03
        db 02,00,00,87,00,91,09,00,90,00,00,03
        db 07,98,04,04,04,04,04,04,04,04,04,08
        ; Piso 32
        db 05,01,01,01,01,01,98,01,01,01,01,06
        db 02,00,28,29,28,00,89,28,28,28,00,03
        db 02,00,00,00,09,00,00,00,00,92,00,03
        db 02,00,24,23,22,00,00,22,25,23,00,03
        db 02,09,00,00,92,00,00,00,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 33
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,26,00,00,00,00,00,90,00,00,00,03
        db 02,00,09,00,91,00,00,00,00,00,00,98
        db 02,00,25,23,23,24,25,25,22,23,00,03
        db 02,00,00,00,00,09,00,92,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 34
        db 05,01,01,01,01,01,01,01,98,01,01,06
        db 02,23,23,25,25,24,00,00,00,89,26,03
        db 98,00,00,00,90,09,00,00,00,00,00,03
        db 02,00,09,00,00,24,25,25,23,00,00,03
        db 02,94,00,00,00,00,00,00,00,00,09,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 35
        db 05,01,01,01,01,01,01,98,01,01,01,06
        db 02,00,22,09,23,22,90,00,24,25,24,03
        db 02,00,91,00,09,00,00,00,09,00,00,03
        db 02,00,23,23,22,22,00,91,25,24,25,03
        db 02,00,00,00,00,00,09,00,00,00,00,03
        db 07,04,04,04,98,04,04,04,04,04,04,08
        ; Piso 36
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,28,00,00,81,00,09,00,00,00,00,03
        db 02,28,87,00,00,09,00,09,93,00,00,98
        db 02,29,00,00,09,93,00,00,00,88,00,03
        db 02,29,93,09,00,00,00,89,00,00,00,03
        db 07,04,04,04,04,98,04,04,04,04,04,08
        ; Piso 37
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,90,00,00,00,29,00,00,03
        db 98,00,90,00,00,00,28,00,00,00,00,98
        db 02,00,09,00,28,00,00,00,91,00,00,03
        db 02,00,28,00,00,00,00,82,09,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 38
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,28,00,00,00,00,00,00,90,00,03
        db 98,00,00,00,29,09,00,90,09,00,00,03
        db 02,00,00,00,83,00,28,00,00,00,00,98
        db 02,00,90,09,00,00,00,00,29,09,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 39
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,43,09,00,00,00,43,43,43,00,03
        db 02,00,00,00,00,88,00,00,00,00,00,03
        db 98,00,00,00,09,00,00,00,89,09,00,03
        db 02,00,00,00,00,00,00,09,00,00,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 40
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,28,29,28,29,00,28,28,28,28,28,03
        db 02,00,00,09,00,00,00,91,00,00,00,03
        db 02,00,28,28,28,00,00,28,29,28,00,03
        db 98,09,00,91,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,98,08
        ; Piso 41
        db 05,98,01,01,01,01,01,01,01,01,01,06
        db 02,00,09,26,88,26,00,26,95,26,00,03
        db 02,00,00,00,00,00,91,00,00,00,00,03
        db 02,00,22,23,23,24,23,22,25,22,00,03
        db 02,00,00,00,90,00,00,00,00,09,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 42
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,26,26,26,00,00,00,26,26,26,87,03
        db 02,95,09,00,09,00,00,90,91,00,00,03
        db 02,00,23,24,00,23,24,09,23,24,00,03
        db 98,00,00,00,00,00,00,00,23,24,00,98
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 43
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,26,26,00,09,00,26,26,00,00,00,98
        db 02,00,88,26,26,00,00,00,95,26,26,03
        db 02,00,00,00,00,09,26,26,00,09,00,03
        db 98,00,09,26,26,00,00,00,00,92,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 44
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 98,00,42,29,28,28,29,29,28,42,00,98
        db 02,00,00,00,00,09,00,92,00,00,00,03
        db 02,00,00,00,42,29,28,42,09,00,00,03
        db 02,00,00,00,92,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,97,04,04,04,04,08
        ; Piso 45
        db 05,01,01,01,98,01,01,01,01,01,01,06
        db 98,00,09,00,00,00,26,26,00,26,26,03
        db 02,00,91,00,00,00,00,00,09,00,00,03
        db 02,00,00,00,94,09,26,26,26,26,26,03
        db 02,00,00,90,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 46
        db 05,01,01,01,01,98,01,01,01,01,01,06
        db 02,00,00,33,00,00,00,90,33,00,00,03
        db 02,00,09,00,00,00,00,00,00,90,00,03
        db 02,32,00,00,00,00,09,00,90,09,32,03
        db 02,00,00,34,33,84,34,32,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 47
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,27,00,27,00,27,00,27,00,26,03
        db 02,00,09,00,09,00,00,00,90,00,00,98
        db 02,00,22,23,24,25,25,24,23,00,00,03
        db 02,00,00,91,00,00,00,00,00,09,00,03
        db 07,04,04,04,04,04,98,04,04,04,04,08
        ; Piso 48
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,26,00,00,00,00,00,00,92,00,00,03
        db 98,00,00,34,32,09,00,34,33,00,00,03
        db 02,00,91,00,00,89,90,00,00,00,00,98
        db 02,00,09,34,33,00,00,34,33,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 49
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,90,00,00,09,00,00,88,00,00,98
        db 02,00,90,32,09,32,09,33,00,33,00,03
        db 98,00,91,09,00,00,00,00,00,00,00,03
        db 02,00,91,33,00,33,00,32,00,33,00,03
        db 07,04,04,04,04,04,04,04,98,04,04,08
        ; Piso 50
        db 05,01,01,01,01,01,01,01,01,01,98,06
        db 98,00,00,00,00,00,92,00,00,09,00,03
        db 02,00,33,09,32,00,32,00,33,00,32,03
        db 02,00,00,95,09,93,00,00,00,94,00,03
        db 02,00,32,00,33,00,32,00,33,00,33,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
        ; Piso 51
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,43,43,35,31,11,11,31,35,31,31,14
        db 13,10,10,10,11,10,10,11,93,10,10,98
        db 13,10,10,87,11,10,10,11,92,10,10,14
        db 13,10,10,93,10,11,11,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 52
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,31,35,31,11,11,11,11,35,31,35,14
        db 98,10,10,10,10,11,10,80,10,10,10,98
        db 13,10,90,35,31,11,31,35,91,10,10,14
        db 13,10,10,10,89,11,10,10,90,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 53
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,31,31,31,11,11,11,35,35,35,14
        db 98,10,91,10,11,10,91,10,10,10,10,98
        db 13,10,35,35,11,10,11,11,31,31,31,14
        db 13,10,10,10,10,11,11,92,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 54
        db 16,12,12,12,12,12,21,12,12,12,12,17
        db 13,10,35,31,35,35,10,31,35,10,31,14
        db 98,10,10,10,10,11,10,10,92,10,10,14
        db 13,10,31,31,31,11,35,35,35,10,31,14
        db 13,10,10,10,10,93,10,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 55
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 13,10,10,10,10,10,10,10,10,10,10,97
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,79,15,15,15,15,15,19
        ; Piso 56
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,32,10,32,10,33,10,32,10,28,14
        db 20,10,10,10,80,11,10,10,10,10,10,98
        db 13,10,10,10,10,81,11,10,10,10,10,14
        db 13,10,33,10,32,11,32,10,32,10,87,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 57
        db 16,12,12,12,12,12,98,12,12,12,12,17
        db 13,28,29,10,10,10,10,10,33,10,26,14
        db 98,10,10,10,10,10,11,90,10,10,82,14
        db 13,10,10,91,10,11,10,10,10,27,27,14
        db 13,10,10,32,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 58
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,10,90,10,81,10,10,14
        db 13,10,31,85,35,43,10,10,10,10,10,98
        db 13,10,10,10,34,32,11,11,10,10,10,14
        db 13,10,10,10,10,10,91,10,93,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 59
        db 16,12,12,12,12,12,12,12,98,12,12,17
        db 13,10,33,10,32,10,11,10,10,10,33,14
        db 98,10,10,10,10,90,11,10,10,90,10,98
        db 13,10,32,11,33,10,11,10,33,44,45,14
        db 13,10,10,10,34,10,10,10,92,46,47,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 60
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,91,10,10,10,10,10,26,14
        db 98,10,10,11,11,10,11,11,31,86,35,14
        db 13,10,10,10,10,11,90,32,34,10,10,14
        db 13,10,10,89,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 61
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,31,35,11,11,11,11,35,35,10,14
        db 13,10,10,10,10,90,10,11,10,90,10,14
        db 13,10,35,31,10,10,11,35,31,35,10,14
        db 13,10,22,10,91,11,10,10,10,23,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 62
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,11,11,10,92,10,10,14
        db 13,10,35,31,11,10,10,11,35,35,10,98
        db 13,10,10,11,31,11,11,35,11,10,10,14
        db 13,10,88,10,11,10,10,11,10,92,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 63
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,42,44,45,28,29,28,31,35,86,28,14
        db 98,10,46,47,11,10,90,10,11,11,10,14
        db 13,10,10,31,31,28,28,91,11,11,10,14
        db 13,10,10,10,90,11,11,11,10,10,43,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 64
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,92,10,10,14
        db 13,10,31,31,11,10,11,10,35,35,10,14
        db 13,10,10,10,10,31,35,10,90,10,10,14
        db 13,10,35,31,93,10,10,10,31,31,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 65
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,87,10,11,11,10,10,10,10,14
        db 13,10,10,10,11,10,10,11,10,89,10,14
        db 13,10,10,10,11,88,10,11,10,10,10,14
        db 13,10,10,10,10,11,11,10,88,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 66
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,87,10,34,32,86,34,33,10,10,43,14
        db 13,10,10,10,10,11,10,10,90,10,43,14
        db 13,10,10,32,34,10,33,34,10,10,43,14
        db 13,10,91,10,10,10,10,10,10,11,43,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 67
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,44,45,10,10,10,34,33,29,34,32,14
        db 13,46,47,11,10,10,10,11,88,10,10,98
        db 13,11,10,87,10,11,10,10,10,10,10,14
        db 13,34,32,10,10,10,34,33,10,34,32,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 68
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,33,10,34,33,10,34,32,10,10,14
        db 98,10,10,91,11,10,10,10,11,10,10,98
        db 13,10,34,32,10,34,32,10,33,10,10,14
        db 13,10,10,10,10,90,10,82,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 69
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,34,10,33,10,34,10,34,10,26,14
        db 98,10,10,10,10,10,81,10,10,10,10,98
        db 13,10,27,10,28,11,27,10,27,10,10,14
        db 13,10,92,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 70
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,34,10,34,10,34,10,34,10,10,14
        db 98,10,10,10,10,10,90,11,11,10,10,14
        db 13,10,10,11,11,10,10,91,10,10,11,14
        db 13,10,10,87,10,10,10,10,90,10,11,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 71
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,11,91,10,14
        db 13,10,35,35,35,10,35,35,35,10,10,14
        db 13,10,10,11,90,10,10,10,90,10,10,14
        db 13,10,31,31,31,11,31,31,31,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 72
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,26,35,24,31,10,27,27,10,27,27,14
        db 13,10,10,10,10,10,93,10,11,10,10,98
        db 13,10,27,27,11,27,27,10,27,27,10,14
        db 13,10,10,10,10,10,10,10,87,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 73
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,35,31,35,31,31,35,31,35,10,14
        db 98,10,11,10,10,88,10,10,10,10,10,98
        db 13,10,31,31,31,31,31,31,35,31,11,14
        db 13,10,10,10,10,10,80,11,10,10,92,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 74
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,27,28,27,10,27,27,29,28,10,14
        db 98,10,10,10,11,10,90,10,10,90,10,14
        db 13,10,27,27,27,27,27,27,27,27,10,14
        db 13,10,10,91,10,11,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 75
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,88,10,10,11,11,10,10,87,10,14
        db 13,10,10,10,11,11,11,11,10,10,10,14
        db 13,10,10,87,11,11,11,11,10,10,10,14
        db 13,10,10,10,10,11,11,10,89,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 76
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,91,10,11,10,10,10,10,10,14
        db 13,10,10,10,91,11,11,10,10,10,10,98
        db 13,10,10,10,10,11,83,10,10,10,10,14
        db 13,10,10,10,10,11,10,90,10,10,88,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 77
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,34,33,10,10,11,34,32,10,44,45,14
        db 98,11,11,11,11,11,10,90,89,46,47,14
        db 13,34,33,27,10,11,10,34,32,10,10,14
        db 13,10,10,10,10,11,91,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 78
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,78,10,10,10,10,89,80,10,10,14
        db 13,10,30,85,30,11,87,10,10,10,10,98
        db 13,10,10,10,89,10,10,30,10,30,10,14
        db 13,10,10,11,10,10,10,10,81,88,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 79
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,11,10,91,10,44,45,14
        db 98,10,29,29,28,10,29,29,10,46,47,14
        db 13,10,10,11,10,10,90,10,10,10,10,14
        db 13,10,34,32,10,33,10,10,34,33,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 80
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,28,28,28,10,10,10,10,10,80,14
        db 13,10,10,10,10,10,10,43,43,43,10,14
        db 13,10,10,29,29,28,10,10,10,10,10,14
        db 13,81,10,10,10,10,10,10,10,11,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 81
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,11,10,90,10,26,41,14
        db 13,10,31,10,35,10,90,10,10,23,10,98
        db 13,10,10,10,10,90,10,10,11,27,10,14
        db 13,10,35,11,31,10,90,10,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 82
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,35,31,31,11,10,10,10,90,43,14
        db 98,91,10,10,10,10,35,31,31,10,10,98
        db 13,10,31,31,35,11,10,10,10,90,10,14
        db 13,91,10,10,10,10,31,31,35,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 83
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,28,29,31,35,28,28,31,31,42,14
        db 98,10,10,10,10,90,11,10,10,10,10,98
        db 13,10,10,10,11,11,91,10,10,10,10,14
        db 13,10,10,10,10,10,10,92,10,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 84
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,91,11,10,10,23,10,10,14
        db 98,10,28,10,10,92,11,11,22,29,10,98
        db 13,10,24,10,11,93,10,10,22,10,10,14
        db 13,10,10,10,10,90,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 85
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,10,10,11,10,10,10,89,10,14
        db 98,10,89,10,11,11,11,10,10,10,10,14
        db 13,10,10,10,10,10,10,10,10,10,10,14
        db 13,10,10,87,10,10,10,10,88,10,10,14
        db 18,15,15,15,15,98,15,15,15,15,15,19
        ; Piso 86
        db 16,12,12,12,12,98,12,17,12,12,12,17
        db 13,81,10,10,10,10,10,14,10,10,10,14
        db 13,10,10,80,11,10,10,14,10,10,10,14
        db 13,10,10,10,10,10,10,11,10,10,10,14
        db 13,10,10,34,33,10,34,32,85,10,34,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 87
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,34,10,34,10,10,32,10,33,42,32,14
        db 13,10,10,10,10,90,11,91,10,10,10,98
        db 13,34,10,34,10,10,32,10,32,11,33,14
        db 13,10,10,10,91,10,90,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 88
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,43,28,28,29,28,28,28,28,43,26,14
        db 98,10,10,10,10,10,10,10,10,10,10,14
        db 13,10,10,10,11,11,11,10,10,31,35,14
        db 13,43,10,10,10,11,10,10,10,10,10,14
        db 18,15,15,15,15,97,15,15,15,15,15,19
        ; Piso 89
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,30,10,30,10,30,10,30,10,10,14
        db 13,10,10,10,89,10,10,10,11,10,11,98
        db 13,10,30,88,30,10,30,10,30,87,10,14
        db 13,10,89,10,10,10,10,87,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 90
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,28,10,29,10,28,10,28,26,43,14
        db 98,10,11,10,10,10,10,10,11,43,43,14
        db 13,10,10,10,11,10,10,10,10,10,43,14
        db 13,10,10,80,10,10,29,10,10,81,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 91
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,28,29,10,10,10,90,10,10,10,14
        db 13,10,10,91,11,10,10,28,28,10,10,98
        db 13,10,29,29,35,31,11,10,10,93,10,14
        db 13,10,10,92,10,10,10,29,29,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 92
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,11,10,92,10,10,10,43,14
        db 98,10,10,87,10,10,10,31,35,31,43,14
        db 13,10,11,10,10,10,10,11,85,35,43,14
        db 13,10,10,10,10,10,10,31,35,31,43,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 93
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,10,10,91,10,10,91,10,10,10,10,14
        db 13,10,10,10,10,11,90,10,90,10,10,14
        db 13,10,10,22,10,25,10,10,11,10,88,14
        db 13,10,10,23,86,24,43,43,43,78,43,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 94
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,30,85,11,30,10,30,42,30,10,10,14
        db 13,10,10,92,10,90,10,10,11,10,10,98
        db 13,10,30,10,30,11,30,10,30,10,10,14
        db 13,10,10,10,10,10,10,93,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 95
        db 16,12,12,12,12,98,12,12,12,12,12,17
        db 13,28,28,29,28,10,29,28,29,28,28,14
        db 98,10,10,10,10,10,10,10,10,10,10,14
        db 13,10,29,11,28,28,11,29,29,31,10,14
        db 13,10,10,10,10,80,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 96
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,10,10,10,10,81,10,10,14
        db 13,86,10,10,11,11,11,10,10,10,10,98
        db 13,34,32,10,11,78,11,87,90,10,10,14
        db 13,42,43,10,10,10,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 97
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,93,10,10,10,10,10,10,14
        db 98,10,10,83,11,11,11,10,10,10,10,98
        db 13,10,10,10,11,11,11,10,94,10,10,14
        db 13,10,10,43,10,10,92,10,43,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 98
        db 16,12,12,12,12,21,12,12,12,12,12,17
        db 13,10,10,44,45,11,44,45,43,43,41,14
        db 98,10,87,46,47,11,46,47,87,10,10,98
        db 13,10,10,10,11,11,11,10,10,10,10,14
        db 13,10,10,43,43,87,10,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 99
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,10,43,44,45,10,10,89,10,14
        db 98,10,10,87,43,46,47,10,43,10,10,98
        db 13,10,10,10,43,11,11,10,43,10,10,14
        db 13,10,87,10,11,11,11,10,43,90,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 100
        db 16,12,12,12,12,12,12,12,12,12,12,17
        db 13,10,10,11,90,11,11,10,90,43,10,14
        db 98,10,10,43,11,44,45,11,11,43,11,98
        db 13,10,10,43,11,46,47,89,10,43,10,14
        db 13,10,10,43,11,87,11,10,10,10,10,14
        db 18,15,15,15,15,15,15,15,15,15,15,19
        ; Piso 101
        db 05,01,01,01,01,01,01,01,01,01,01,06
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 96,00,00,00,00,00,00,00,00,00,00,03
        db 02,00,00,00,00,00,00,00,00,00,00,97
        db 02,00,00,00,00,00,00,00,00,00,00,03
        db 07,04,04,04,04,04,04,04,04,04,04,08
