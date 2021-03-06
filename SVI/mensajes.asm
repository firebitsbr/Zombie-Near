        ;
        ; Mensajes de Zombie Near
        ;
        ; por Oscar Toledo Guti�rrez.
        ;
        ; (c) Copyright 2011 Oscar Toledo Guti�rrez.
        ;
        ; Creaci�n: 20-ene-2011.
        ; Revisi�n: 21-abr-2011. Se eliminan mensajes en espa�ol.
        ; Revisi�n: 23-abr-2011. Se agrega minihistoria.
        ; Revisi�n: 26-abr-2011. Ajustes en minihistoria y se agregan nombres
        ;                        de personajes.
        ; Revisi�n: 12-may-2011. Se elimina mensaje_20.
        ; Revisi�n: 22-jun-2012. Se elimina mensaje_12.
        ;

        ;
        ; Banderas (byte 0):
        ; 00 - Continuar con siguiente
        ; 01 - Seleccionar siguiente si rescat�, posterior si no rescat�
        ; 02 - Brincar el siguiente e ir al posterior
        ; 03 - Volver al juego
        ; 04 - Volver al juego con efecto
        ; 05 - Ir al gran final
        ;
        ; Retrato (byte 1, bits 4-7):
        ; $10 - Delta
        ; $20 - Telefonista
        ; $30 - Cient�fica 
        ; $40 - Jefe 1 
        ; $50 - Jefe 2 
        ;
        ; Longitud (byte 1, bits 0-3):
        ; Contiene la longitud m�xima de una l�nea, no debe exceder de 14
        ; caracteres.
        ;
        ; Letras:
        ; 01-1A - Alfabeto
        ; 2E - !
        ; 2F - ?
        ; 30 - '
        ; 35 - :
        ;
historia_1a:
        db 0,$10 OR 9
        ; IT WAS SO / EASY!
        db $09,$14,$00,$17,$01,$13,$00,$13,$4f
        db $05,$01,$13,$19,$aE

historia_1b:
        db 0,$10 OR 14
        ; NO ZOMBIE CAN / DEFEAT ME!
        db $0e,$0f,$00,$1a,$0f,$0d,$02,$09,$05,$00,$03,$01,$4e
        db $04,$05,$06,$05,$01,$14,$00,$0d,$05,$ae

historia_2:
        db 1,$20 OR 12
        ; WELL DONE! / SCIENTISTS / RESCUED- 00
        db $17,$05,$0c,$0c,$00,$04,$0f,$0e,$05,$6e
        db $13,$03,$09,$05,$0e,$14,$09,$13,$14,$53
        db $12,$05,$13,$03,$15,$05,$04,$34,$00,$3e,$bf

historia_3a:
        db 2,$10 OR 13
        ; I'M DOING / MY BEST
        db $09,$30,$0d,$00,$04,$0f,$09,$0e,$07,$00,$0d,$59
        db $02,$05,$13,$94

historia_3b:
        db 2,$10 OR 12
        ; I LIKE TO / SAVE PEOPLE
        db $09,$00,$0c,$09,$0b,$05,$00,$14,$4f
        db $13,$01,$16,$05,$00,$10,$05,$0f,$10,$0c,$85

historia_4a:
        db 0,$10 OR 12
        ; I DIDN'T SAW / PEOPLE
        db $09,$00,$04,$09,$04,$0e,$30,$14,$00,$13,$01,$57
        db $10,$05,$0f,$10,$0c,$85

historia_4b:
        db 0,$10 OR 13
        ; IT IS SO SAD
        db $09,$14,$00,$09,$13,$00,$13,$0f,$00,$13,$01,$84

historia_5:
        db 0,$20 OR 9
        ; WAIT! I'M / RECEIVING / SOMETHING
        db $17,$01,$09,$14,$2e,$00,$09,$30,$4d
        db $12,$05,$03,$05,$09,$16,$09,$0e,$47
        db $13,$0f,$0d,$05,$14,$08,$09,$0e,$87

historia_6:
        db 3,$30 OR 11
        ; PLEASE HELP / ME! I'M / SURROUNDED
        db $10,$0c,$05,$01,$13,$05,$00,$08,$05,$0c,$50
        db $0d,$05,$2e,$00,$09,$30,$4d
        db $13,$15,$12,$12,$0f,$15,$0e,$04,$05,$84

historia_7a:
        db 0,$10 OR 10
        ; I COME TO / SAVE YOU
        db $09,$00,$03,$0f,$0d,$05,$00,$14,$4f
        db $13,$01,$16,$05,$00,$19,$0f,$95

historia_7b:
        db 0,$10 OR 11
        ; I'M HERE TO / RESCUE YOU
        db $09,$30,$0d,$00,$08,$05,$12,$05,$00,$14,$4f
        db $12,$05,$13,$03,$15,$05,$00,$19,$0f,$95

historia_8:
        db 0,$30 OR 12
        ; YOU'RE TOO / LATE / I'M INFECTED
        db $19,$0f,$15,$30,$12,$05,$00,$14,$0f,$4f
        db $0c,$01,$14,$45
        db $09,$30,$0d,$00,$09,$0e,$06,$05,$03,$14,$05,$84

historia_9a:
        db 0,$10 OR 11
        ; INFECTED? / HOW?
        db $09,$0e,$06,$05,$03,$14,$05,$04,$6f
        db $08,$0f,$17,$af

historia_9b:
        db 0,$10 OR 12
        ; WHAT ARE YOU / SAYING?
        db $17,$08,$01,$14,$00,$01,$12,$05,$00,$19,$0f,$55
        db $13,$01,$19,$09,$0e,$07,$af

historia_10:
        db 4,$30 OR 12
        ; AARGH! HELP! / GRR!
        db $01,$01,$12,$07,$08,$2e,$00,$08,$05,$0c,$10,$6e
        db $07,$12,$12,$ae
        
historia_11a:
        db 0,$10 OR 12
        ; POOR GIRL! / SHE WAS CUTE
        db $10,$0f,$0f,$12,$00,$07,$09,$12,$0c,$6e
        db $13,$08,$05,$00,$17,$01,$13,$00,$03,$15,$14,$85

historia_11b:
        db 0,$10 OR 10
        ; I COULDN'T / SAVE HER
        db $09,$00,$03,$0f,$15,$0c,$04,$0e,$30,$54
        db $13,$01,$16,$05,$00,$08,$05,$92

historia_12:
        db 1,$20 OR 11
        ; SCIENTISTS / RESCUED- 00 / GOOD WORK!
        db $13,$03,$09,$05,$0e,$14,$09,$13,$14,$53
        db $12,$05,$13,$03,$15,$05,$04,$34,$3e,$7f
        db $07,$0f,$0f,$04,$00,$17,$0f,$12,$0b,$ae

historia_13a:
        db 2,$10 OR 7
        ; I'M THE / BEST!
        db $09,$30,$0d,$00,$14,$08,$45
        db $02,$05,$13,$14,$ae

historia_13b:
        db 2,$10 OR 11
        ; I'M / UNBEATABLE!
        db $09,$30,$4d
        db $15,$0e,$02,$05,$01,$14,$01,$02,$0c,$05,$ae

historia_14a:
        db 0,$10 OR 12
        ; WHAT / SCIENTISTS?
        db $17,$08,$01,$54
        db $13,$03,$09,$05,$0e,$14,$09,$13,$14,$13,$af

historia_14b:
        db 0,$10 OR 12
        ; THERE ARE / SCIENTISTS?
        db $14,$08,$05,$12,$05,$00,$01,$12,$45
        db $13,$03,$09,$05,$0e,$14,$09,$13,$14,$13,$af

historia_15:
        db 0,$20 OR 14
        ; THERE IS / ANOTHER SIGNAL
        db $14,$08,$05,$12,$05,$00,$09,$53
        db $01,$0e,$0f,$14,$08,$05,$12,$00,$13,$09,$07,$0e,$01,$8c

historia_16:
        db 3,$40 OR 12
        ; HELP ME! I'M / HIDDEN BUT / SOMETHING / FOLLOWS ME!
        db $08,$05,$0c,$10,$00,$0d,$05,$2e,$00,$09,$30,$4d
        db $08,$09,$04,$04,$05,$0e,$00,$02,$15,$54
        db $13,$0f,$0d,$05,$14,$08,$09,$0e,$47
        db $06,$0f,$0c,$0c,$0f,$17,$13,$00,$0d,$05,$ae

historia_17a:
        db 0,$10 OR 11
        ; YOU'RE HERE / GREAT!
        db $19,$0F,$15,$30,$12,$05,$00,$08,$05,$12,$45
        db $07,$12,$05,$01,$14,$ae

historia_17b:
        db 0,$10 OR 12
        ; APPEARS THAT / I'M ON TIME / TO SAVE YOU
        db $01,$10,$10,$05,$01,$12,$13,$00,$14,$08,$01,$54
        db $09,$30,$0d,$00,$0f,$0e,$00,$14,$09,$0d,$45
        db $14,$0f,$00,$13,$01,$16,$05,$00,$19,$0f,$95

historia_18:
        db 0,$40 OR 13
        ; SO YOU FOUGHT / YOUR WAY
        db $13,$0f,$00,$19,$0f,$15,$00,$06,$0f,$15,$07,$08,$54
        db $19,$0f,$15,$12,$00,$17,$01,$99

historia_19a:
        db 0,$10 OR 10
        ; EXCUSE ME?
        db $05,$18,$03,$15,$13,$05,$00,$0d,$05,$af

historia_19b:
        db 0,$10 OR 13
        ; IT IS MY WORK
        db $09,$14,$00,$09,$13,$00,$0d,$19,$00,$17,$0f,$12,$8b

historia_20:
        db 0,$40 OR 14
        ; I WASN'T GOING / TO SHOW MY / POWERS
        db $09,$00,$17,$01,$13,$0e,$30,$14,$00,$07,$0f,$09,$0e,$47
        db $14,$0f,$00,$13,$08,$0f,$17,$00,$0d,$59
        db $10,$0f,$17,$05,$12,$93

historia_21a:
        db 0,$10 OR 13
        ; WAIT! ARE YOU / THE BAD GUY?
        db $17,$01,$09,$14,$2e,$00,$01,$12,$05,$00,$19,$0f,$55
        db $14,$08,$05,$00,$02,$01,$04,$00,$07,$15,$19,$af

historia_21b:
        db 0,$10 OR 14
        ; DO YOU HURT / EVERYBODY?
        db $04,$0f,$00,$19,$0f,$15,$00,$08,$15,$12,$54
        db $05,$16,$05,$12,$19,$02,$0f,$04,$19,$af

historia_22:
        db 4,$50 OR 13
        ; DO YOU WANT / TO SEE / SOMETHING / REALLY SCARY?
        db $04,$0f,$00,$19,$0f,$15,$00,$17,$01,$0e,$54
        db $14,$0f,$00,$13,$05,$45
        db $13,$0f,$0d,$05,$14,$08,$09,$0e,$47
        db $12,$05,$01,$0c,$0c,$19,$00,$13,$03,$01,$12,$19,$af

historia_23a:
        db 0,$10 OR 12
        ; WHAT A NASTY / ZOMBIE!
        db $17,$08,$01,$14,$00,$01,$00,$0e,$01,$13,$14,$59
        db $1a,$0f,$0d,$02,$09,$05,$ae

historia_23b:
        db 0,$10 OR 14
        ; SO MANY HARMED / INNOCENTS!
        db $13,$0f,$00,$0d,$01,$0e,$19,$00,$08,$01,$12,$0d,$05,$44
        db $09,$0e,$0e,$0f,$03,$05,$0e,$14,$13,$ae

historia_24:
        db 1,$20 OR 11
        ; MISSION / COMPLETE! / SCIENTISTS / RESCUED- 00
        db $0d,$09,$13,$13,$09,$0f,$4e
        db $03,$0f,$0d,$10,$0c,$05,$14,$05,$6e
        db $13,$03,$09,$05,$0e,$14,$09,$13,$14,$53
        db $12,$05,$13,$03,$15,$05,$04,$34,$3e,$bf

historia_25a:
        db 2,$10 OR 11
        ; I DESERVE / A MEDAL
        db $09,$00,$04,$05,$13,$05,$12,$16,$45
        db $01,$00,$0d,$05,$04,$01,$8c

historia_25b:
        db 2,$10 OR 12
        ; I'M PROUD OF / MYSELF!
        db $09,$30,$0d,$00,$10,$12,$0f,$15,$04,$00,$0f,$46
        db $0d,$19,$13,$05,$0c,$06,$ae

historia_26a:
        db 0,$10 OR 12
        ; I DIDN'T SAW / ANYBODY
        db $09,$00,$04,$09,$04,$0e,$30,$14,$00,$13,$01,$57
        db $01,$0e,$19,$02,$0f,$04,$99

historia_26b:
        db 0,$10 OR 7
        ; PEOPLE? / WHERE?
        db $10,$05,$0F,$10,$0C,$05,$6f
        db $17,$08,$05,$12,$05,$af

historia_27:
        db 0,$20 OR 13
        ; I'VE SENT YOU / A HELICOPTER
        db $09,$30,$16,$05,$00,$13,$05,$0e,$14,$00,$19,$0f,$55
        db $01,$00,$08,$05,$0c,$09,$03,$0f,$10,$14,$05,$92

historia_28a:
        db 5,$10 OR 10
        ; I'LL BE ON / TIME TO / WATCH TV!
        db $09,$30,$0c,$0c,$00,$02,$05,$00,$0f,$4e
        db $14,$09,$0d,$05,$00,$14,$4f
        db $17,$01,$14,$03,$08,$00,$14,$16,$ae

historia_28b:
        db 5,$10 OR 12
        ; I'VE TO FEED / MY CATS
        db $09,$30,$16,$05,$00,$14,$0f,$00,$06,$05,$05,$44
        db $0d,$19,$00,$03,$01,$14,$93

mensaje_14:     ; A GAME BY
        db $00,$01,$00,$07,$01,$0d,$05,$00,$02,$99

mensaje_21:     ; THE STORY SO FAR
        db $14,$08,$05,$00,$13,$14,$0f,$12,$19,$00,$13,$0f,$00,$06,$01,$92

mensaje_22:     ; THE SPECIAL TEAM RECEIVED A SOS
        db $14,$08,$05,$00,$13,$10,$05,$03,$09,$01,$0c,$00,$14,$05,$01,$0d
        db $00,$12,$05,$03,$05,$09,$16,$05,$04,$00,$01,$00,$13,$0f,$53
        db $40  ; CALL FROM THE GOVERNMENT LABS
        db $03,$01,$0c,$0c,$00,$06,$12,$0f,$0d,$00,$14,$08,$05,$00
        db $07,$0f,$16,$05,$12,$0e,$0d,$05,$0e,$14,$00,$0c,$01,$02,$53
        db $40
        db $40  ; SOMETHING WEIRD HAS HAPPENED
        db $13,$0f,$0d,$05,$14,$08,$09,$0e,$07,$00,$17,$05,$09,$12,$04,$00
        db $08,$01,$13,$00,$08,$01,$10,$10,$05,$0e,$05,$44
        db $40  ; SOMETHING ABOUT ZOMBIES
        db $13,$0f,$0d,$05,$14,$08,$09,$0e,$07,$00,$01,$02,$0f,$15,$14,$00
        db $1a,$0f,$0d,$02,$09,$05,$53
        db $40
        db $40  ; BEFORE THEY COULD RECEIVE
        db $02,$05,$06,$0f,$12,$05,$00,$14,$08,$05,$19,$00
        db $03,$0f,$15,$0c,$04,$00,$12,$05,$03,$05,$09,$16,$45
        db $40  ; MORE INFORMATION THE MESSAGE
        db $0d,$0f,$12,$05,$00,$09,$0e,$06,$0f,$12,$0d,$01,$14,$09,$0f,$0e
        db $00,$14,$08,$05,$00,$0d,$05,$13,$13,$01,$07,$45
        db $40  ; SUDDENLY STOPS
        db $13,$15,$04,$04,$05,$0e,$0c,$19,$00,$13,$14,$0f,$10,$53
        db $40
        db $40  ; WILL DELTA-1 AND DELTA-2 SURVIVE
        db $17,$09,$0c,$0c,$00
        db $04,$05,$0c,$14,$01,$34,$21,$00,$01,$0e,$04,$00
        db $04,$05,$0c,$14,$01,$34,$22,$00,$13,$15,$12,$16,$09,$16,$45
        db $40  ; THIS MISSION?
        db $14,$08,$09,$13,$00,$0d,$09,$13,$13,$09,$0f,$0e,$af

mensaje_23:     ; SCIENTIST
        db $13,$03,$09,$05,$0e,$14,$09,$13,$94
mensaje_24:     ; DIRECTOR
        db $04,$09,$12,$05,$03,$14,$0f,$92
mensaje_25:     ; DELTA TEAM'S / OPERATOR
        db $04,$05,$0c,$14,$41
        db $14,$05,$01,$0d,$30,$53
        db $0f,$10,$05,$12,$01,$14,$0f,$92
mensaje_26:     ; DELTA-1
        db $04,$05,$0c,$14,$01,$34,$a1
mensaje_27:     ; DELTA-2
        db $04,$05,$0c,$14,$01,$34,$a2

