/*
** Convierte una imagen BMP a una pantalla de 16 colores
**
** por Oscar Toledo Guti�rrez
**
** (c) Copyright 2009-2011 Oscar Toledo Guti�rrez
**
** Creaci�n: 06-jun-2009.
** Revisi�n: 25-jun-2009. Optimiza el color para mejorar la descompactaci�n,
**                        ahorra 25% de espacio.
** Revisi�n: 10-ene-2011. Nuevo modo para gr�fica 64x64.
** Revisi�n: 11-ene-2011. Usa color transparente casi siempre.
** Revisi�n: 16-ene-2011. Permite intercambiar colores.
** Revisi�n: 08-feb-2011. Se cambian los valores de compactaci�n para evitar
**                        incrementos/decrementos en descompactador.
** Revisi�n: 15-feb-2011. Compila sin advertencias, evita optimizar color si no
**                        va a compactar. Se agrega info. de uso cambio color.
**                        Se agregan comentarios. Nuevo modo para convertir a
**                        imagen en gris.
*/

#include <stdio.h>
#include <stdlib.h>

unsigned char bitmap[6144];
unsigned char color[6144];

int tam_x;              /* Tama�o X de la imagen, debe ser m�ltiplo de 8 */
int tam_y;              /* Tama�o Y de la imagen, debe ser m�ltiplo de 8 */

/*
** Los colores MSX seg�n yo, son los que deben usarse en la imagen,
** en el Paint basta con definir el color RGB
*/ 
unsigned char colores[32 * 3] = {
  0x04, 0x05, 0x06,
  0x00, 0x00, 0x00,
  0x00, 0xdc, 0x00,
  0x78, 0xfc, 0x78,
  0xc8, 0x00, 0x00,
  0xf8, 0x80, 0x28,
  0x00, 0x00, 0xc8,
  0xe8, 0xfc, 0xa8,
  0x50, 0x54, 0xf8,
  0xa8, 0xa8, 0xf8,
  0x28, 0xd4, 0xf8,
  0xa8, 0xec, 0xf8,
  0x00, 0x74, 0x00,
  0xf8, 0x28, 0xd0,
  0xb8, 0xb8, 0xb8,
  0xf8, 0xfc, 0xf8,
  
  0x04, 0x05, 0x06,
  0x00, 0x00, 0x00,
  0x00, 0xdf, 0x00,
  0x7f, 0xff, 0x7f,
  0xcf, 0x00, 0x00,
  0xff, 0x80, 0x2f,
  0x00, 0x00, 0xcf,
  0xef, 0xff, 0xaf,
  0x50, 0x57, 0xff,
  0xaf, 0xa8, 0xff,
  0x2f, 0xd7, 0xff,
  0xaf, 0xef, 0xff,
  0x00, 0x77, 0x00,
  0xff, 0x2b, 0xd7,
  0xbf, 0xb8, 0xbf,
  0xff, 0xff, 0xff,
};

/*
** Prototipos
*/
int main(int, char *[]);
void compacta_cortina(char *, char *, FILE *);
void compacta3(char *, int, FILE *);
void compacta_interlazado(char *, char *, FILE *);
void compacta2(char *, FILE *);

/*
** Programa principal
*/
int main(int argc, char *argv[])
{
  FILE *entrada;
  FILE *salida;
  int c;
  int d;
  int e;
  unsigned char buffer[768];
  unsigned char medio[256];
  unsigned char uso[16];
  unsigned char mapa[16];
  int b;
  int g;
  int r;
  int offset;
  int max1;
  int color1;
  int max2;
  int color2;
  int max3;
  int color3;
  unsigned char *ap1;
  unsigned char *ap2;
  unsigned char *ap3;

  /*
  ** Manual de uso, muy �til para acordarse de esos peque�os detalles
  */
  if (argc < 3) {
    printf("Programa para crear imagenes compactadas. (c) 2011 Oscar Toledo G.");
    printf("\n");
    printf("Forma de uso:\n");
    printf("\n");
    printf("Crea imagen interlazada: (negro es transparente)\n");
    printf("  imagen archivo.bmp salida.dat\n");
    printf("\n");
    printf("Crea imagen en cortina:\n");
    printf("  imagen archivo.bmp salida.dat a\n");
    printf("\n");
    printf("Crea imagen 64x64 sin compactar:\n");
    printf("  imagen archivo.bmp salida.dat a b\n");
    printf("\n");
    printf("Crea imagen 64x64 sin compactar con color 5 cambiado a 6:\n");
    printf("  imagen archivo.bmp salida.dat a b 56\n");
    printf("\n");
    printf("Crea imagen 64x64 sin compactar con 5 a 6 y c a 4:\n");
    printf("  imagen archivo.bmp salida.dat a b 56c4\n");
    printf("\n");
    printf("Crea imagen interlazada: (triple tono, negro-gris-blanco)\n");
    printf("  imagen archivo.bmp salida.dat a b c d\n");
    printf("\n");
    exit(1);
  }
  if (argc == 4) {  /* Fondo transparente */
    colores[0] = 0;
    colores[1] = 0;
    colores[2] = 0;
    colores[3] = 4;
    colores[4] = 5;
    colores[5] = 6;
  }
  entrada = fopen(argv[1], "rb");
  if (entrada == NULL) {
    printf("Falla al leer entrada\n");
    exit(1);
  }
  salida = fopen(argv[2], "wb");
  if (salida == NULL) {
    fclose(entrada);
    printf("Falla al escribir salida\n");
    exit(1);
  }
  fread(buffer, 1, 54, entrada);
  tam_x = buffer[0x12] | (buffer[0x13] << 8);
  tam_y = buffer[0x16] | (buffer[0x17] << 8);

  /*
  ** Carga toda la imagen y va convirtiendo al formato VDP
  */
  for (c = 0; c < tam_y; c++) {
    fseek(entrada, 54 + ((tam_y - 1) - c) * tam_x * 3, SEEK_SET);
    fread(buffer, 1, tam_x * 3, entrada);
    for (d = 0; d < tam_x; d++) {
      b = buffer[d * 3];
      g = buffer[d * 3 + 1];
      r = buffer[d * 3 + 2];
      if (argc == 7) {
        r = (r * 30 + g * 59 + b * 11 + 49) / 100;
        if (r < 192)
          e = 1;
        else if (r < 240)
          e = 14;
        else
          e = 15;
      } else {

        /*
        ** Algunas variaciones de color admitidas por lapsus al dibujar
        */
        if (b == 0x30 && g == 0x30 && r == 0x30) {
          b = 0;
          g = 0;
          r = 0;
        }
        if (b == 0x78 && g == 0x7c && r == 0xf8) {
          colores[24] = 0x78;
          colores[25] = 0x7c;
          colores[26] = 0xf8;
          colores[18] = 0x50;
          colores[19] = 0x54;
          colores[20] = 0xf8;
        }
        if (b == 0x08 && g == 0x00 && r == 0x00) {
          b = 0;
          g = 0;
          r = 0;
        }
        if (b == 0x98 && g == 0x00 && r == 0x00) {
          b = 0xc8;
          g = 0;
          r = 0;
        }
        if (b == 0x00 && g == 0xff && r == 0x00) {
          b = 0;
          g = 0xdc;
          r = 0;
        }
        if (b == 0xff && g == 0xff && r == 0xff) {
          b = 0xf8;
          g = 0xfc;
          r = 0xf8;
        }
        if (b == 0x50 && g == 0xfc && r == 0x50) {
          b = 0x78;
          g = 0xfc;
          r = 0x78;
        }
        for (e = 0; e < 32; e++) {
          if (colores[e * 3] == b
           && colores[e * 3 + 1] == g
           && colores[e * 3 + 2] == r)
            break;
        }
        if (e == 32) {
          printf("Color no hallado %02x,%02x,%02x\n", b, g, r);
          e = 15;
        }
        if (e == 1 && argc != 5)
          e = 0;
        else if (argc == 6) {  /* �Traslado de color? */
          ap1 = argv[5];
          while (*ap1) {
            g = toupper(*ap1) - '0';
            if (g > 9)
              g -= 7;
            b = toupper(ap1[1]) - '0';
            if (b > 9)
              b -= 7;
            if (e == g) {
              e = b;
              break;
            }
            ap1 += 2;
          }
        }
      }
      medio[d] = e & 0x0f;
    }

    /*
    ** Calcula los dos colores m�s usados por cada 8 pixeles
    **
    ** El dibujante tiene la responsabilidad de optimizar la imagen origen
    */
    for (d = 0; d < tam_x; d += 8) {
      offset = c / 8 * tam_x + (c & 7) + d;
      for (e = 0; e < 16; e++)
        uso[e] = 0;
      for (e = 0; e < 8; e++) 
        uso[medio[d + e]]++;
      do {
        max1 = -1;
        color1 = -1;
        max2 = -1;
        color2 = -1;
        max3 = -1;
        color3 = -1;
        for (e = 0; e < 16; e++) {
          if (uso[e] > max1) {
            max1 = uso[e];
            color1 = e;
          }
        }
        for (e = 0; e < 16; e++) {
         if (uso[e] > max2 && e != color1) {
             max2 = uso[e];
            color2 = e;
          }
        }
        for (e = 0; e < 16; e++) {
          if (uso[e] > max3 && e != color1 && e != color2) {
            max3 = uso[e];
            color3 = e;
          }
        }
        if (max3 == 0)
          break;
        uso[color3] = 0;
        mapa[color3] = 0;        
      } while (1) ;
      if (max1 > 0)
        mapa[color1] = 1;
      if (max2 > 0)
        mapa[color2] = 0;
      color1 &= 0x0f;
      color2 &= 0x0f;
      color[offset] = color1 << 4 | color2;
      r = 0;
      for (e = 0; e < 8; e++) 
        r = (r << 1) | mapa[medio[d + e]];
      bitmap[offset] = r;
      offset += 8;
    }
  }

  /*
  ** Optimiza el color para mejorar la compactaci�n
  **
  ** Observe que se hace de 8 en 8 bytes, puesto que la imagen se compacta
  ** por l�neas de pixeles, y el pr�ximo byte de cada l�nea se halla cada
  ** 8 bytes.
  **
  ** Si se requiriera compactaci�n corrida (p.ej. para descompactar en un
  ** buffer) entonces si se debe hacer por bytes seguidos.
  */
  if (argc != 5 && argc != 6) { /* No es necesario para imagen descompactada */
    for (c = 0; c < 8; c++) {
      for (d = 0; d < tam_y / 8; d++) {
        ap1 = color + c + d * tam_x;
        ap2 = bitmap + c + d * tam_x;
        b = *ap1;
        g = *ap2;
        ap1 += 8;
        ap2 += 8;
        for (e = 1; e < 32; e++) {
          if (*ap1 != b || *ap2 != g)
            break;
          ap1 += 8;
          ap2 += 8;
        }
        if (e < 32) {
          if (g == 0x00) {
            if ((b & 0x0f) == (*ap1 & 0x0f)) {
              b = *ap1;
              do {
                ap1 -= 8;
                ap2 -= 8;
                *ap1 = b;
                *ap2 = g;
              } while (--e) ;
            } else if ((b & 0x0f) == (*ap1 & 0xf0)) {
              b = *ap1;
              g = 0xff;
              do {
                ap1 -= 8;
                ap2 -= 8;
                *ap1 = b;
                *ap2 = g;
              } while (--e) ;
            }
          } else if (g == 0xff) {
            if ((b & 0xf0) == (*ap1 & 0xf0)) {
              b = *ap1;
              do {
                ap1 -= 8;
                ap2 -= 8;
                *ap1 = b;
                *ap2 = g;
              } while (--e) ;
            } else if ((b >> 4) == (*ap1 & 0x0f)) {
              b = *ap1;
              g = 0x00;
              do {
                ap1 -= 8;
                ap2 -= 8;
                *ap1 = b;
                *ap2 = g;
              } while (--e) ;
            }
          }
        }
        ap1 = color + c + d * tam_x;
        ap2 = bitmap + c + d * tam_x;
        b = *ap1;
        g = *ap2;
        ap1 += 8;
        ap2 += 8;
        for (e = 1; e < tam_x / 8; e++) {
          if (((*ap1 >> 4 | *ap1 << 4) & 0xff) == b) {
            *ap1 = b;
            *ap2 = ~*ap2;
          } else if ((*ap1 >> 4) == (b >> 4) && *ap2 == 0xff) {
            *ap1 = b;
          } else if ((*ap1 >> 4) == (b & 0x0f) && *ap2 == 0xff) {
            *ap1 = b;
            *ap2 = 0x00;
          } else if ((*ap1 & 0x0f) == (b >> 4) && *ap2 == 0x00) {
            *ap1 = b;
            *ap2 = 0xff;
          } else if ((*ap1 & 0x0f) == (b & 0x0f) && *ap2 == 0x00) {
            *ap1 = b;
            *ap2 = 0x00;
          }
          b = *ap1;
          g = *ap2;
          ap1 += 8;
          ap2 += 8;
        }
      }
    }
  }
  if (argc == 5 || argc == 6) {
    fwrite(bitmap, 1, tam_x * tam_y / 8, salida);
    fwrite(color, 1, tam_x * tam_y / 8, salida);
  } else if (argc == 4) {
    compacta_cortina(bitmap, color, salida);
  } else {
    compacta_interlazado(bitmap, color, salida);
  }
  fclose(salida);
  fclose(entrada);
}

/*
** Compacta un bitmap en forma de cortina que se abre del centro hacia afuera
*/
void compacta_cortina(char *ap1, char *ap2, FILE *salida)
{
  int c;
  int d;

  c = tam_y / 2 - 1;
  d = tam_y / 2;
  while (d < tam_y) {
    if (c >= 0) {
      compacta3(ap1 + (c & 7) + ((c >> 3) * tam_x), 0x00, salida);
      compacta3(ap2 + (c & 7) + ((c >> 3) * tam_x), 0x11, salida);
    }
    compacta3(ap1 + (d & 7) + ((d >> 3) * tam_x), 0x00, salida);
    compacta3(ap2 + (d & 7) + ((d >> 3) * tam_x), 0x11, salida);
    c--;
    d++;
  }
}

/*
** Verifica si puede optimizar la compactaci�n
*/
void compacta3(char *ap1, int valor, FILE *salida)
{
  int c;
  int d;
  char *ap;

  ap = ap1;
  d = *ap;
  ap += 8;
  for (c = 1; c < 32; c++) {
    if (*ap != d || *ap != valor) {
      compacta2(ap1, salida);
      return;
    }
    ap += 8;
  }
  fwrite("\x00", 1, 1, salida);  /* 08-feb-2011, antes 0x80 */
}

/*
** Compacta un bitmap y su color de forma interlazada
*/
void compacta_interlazado(char *ap1, char *ap2, FILE *salida)
{
  int c;
  int d;

  for (c = 0; c < 8; c++) {
    for (d = 0; d < tam_y / 8; d++) {
      compacta2(ap1 + c + d * tam_x, salida);
      compacta2(ap2 + c + d * tam_x, salida);
    }
  }
}

/*
** Compactaci�n tipo RLE (Run-Length-Encoded)
**
** La tasa m�xima de ineficiencia es de un byte extra por cada 32 bytes.
** La tasa m�xima de compresi�n es 2 bytes por cada 32 bytes.
**
** Este algoritmo se basa en detectar tiras de bytes iguales, por lo que se
** beneficia mucho de la optimizaci�n de colores similares que se realiza
** antes de entrar aqu�.
**
** La implementaci�n del descompactador es r�pida y sencilla, suficientemente
** veloz para realizarse dentro de la rutina de interrupci�n.
**
** Otros algoritmos pudieran ser m�s efectivos pero tambi�n m�s lentos para
** descompactar. Siempre hay un equilibrio compresi�n/velocidad/dificultad.
*/
void compacta2(char *ap1, FILE *salida)
{
  char buffer[64];
  char *ap2;
  char *ap3;
  char *ap4 = buffer;
  int c;
  int d;

  ap2 = ap1 + 256;
  while (ap1 < ap2) {  /* Mientras haya datos de entrada */
    c = *ap1;
    ap1 += 8;
    if (ap1 == ap2) {  /* �Fin de compactaci�n? entonces sobra un byte */
      *ap4++ = 1;      /* 08-feb-2011, antes 0 */
      *ap4++ = c;
      break;
    }
    if (c == *ap1) {   /* �Byte repetido? */
      d = 0x00fe;  /* 08-feb-2011, antes 0x0100 */
      while (ap1 < ap2 && *ap1 == c) {  /* Busca m�s */
        d--;
        ap1 += 8;
      }
      *ap4++ = d;      /* Repetici�n */
      *ap4++ = c;      /* Byte */
      continue;
    }

    /*
    ** Bytes diferentes, copia directamente, tolera hasta tres bytes
    ** iguales antes de salir de copia, menos es ineficiente,
    ** por ejemplo:
    **
    **    Caso cl�sico de dos bytes
    **      aa bb cc cc bb aa bb aa
    **
    **    Sin optimizaci�n (10 bytes de salida)
    **      02 aa bb fd cc 04 bb aa bb aa
    **
    **    Con optimizaci�n (9 bytes de salida)
    **      08 aa bb cc cc bb aa bb aa
    **
    **
    **    Caso cl�sico de tres bytes
    **      aa bb cc cc cc bb aa bb aa
    **
    **    Sin optimizaci�n (10 bytes de salida)
    **      02 aa bb fc cc 04 bb aa bb aa
    **
    **    Con optimizaci�n (10 bytes de salida)
    **      09 aa bb cc cc cc bb aa bb aa
    **
    **    Observe que se ocupa lo mismo, pero es mejor con la optimizaci�n
    **    de lo contrario hay una tasa de recarga (overhead) porque el
    **    descompactador tiene que procesar dos �rdenes m�s.
    **
    **
    **    Caso cl�sico de cuatro bytes
    **      aa bb cc cc cc cc bb aa bb aa
    **
    **    Sale al detectar cuarto byte (10 bytes de salida)
    **      02 aa bb fb cc 04 bb aa bb aa
    **
    **    Ya no conviene dejarlo en copia (ser�an 11 bytes)
    */
    ap3 = ap1 - 8;
    d = 1;             /* 08-feb-2011, antes 0 */
    while (ap1 < ap2
        && (ap1 + 8 == ap2
         || *ap1 != *(ap1 + 8)
         || ap1 + 16 < ap2 && *ap1 != *(ap1 + 16))) {
      d++;
      ap1 += 8;
    }
    *ap4++ = d;        /* Bytes por copiar */
    while (ap3 < ap1) {
      *ap4++ = *ap3;   /* Copia bytes */
      ap3 += 8;
    }
  }
  fwrite(buffer, 1, ap4 - buffer, salida);
}

