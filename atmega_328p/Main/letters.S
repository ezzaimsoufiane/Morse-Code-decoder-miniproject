;;; letters.S <date> <maintainerName(s)>
;;; File to declare letter representations for a 7-Segment Display
;;; REFERENCES:
;;; TODO

#include <avr/io.h>

    ;; The segments of the 7-Segment Display
    SEG_A = 7		; top
	SEG_B = 1 		; upper right
	SEG_C = 2		; lower right
	SEG_D = 3		; buttom
	SEG_E = 4		; lower left
	SEG_F = 5		; upper left
	SEG_G = 6		; middle

    ;; Bit mask to turn off display
	ALL_SEGS = _BV(SEG_A) | _BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G)

    ;; The letter representations (digit rerpesentations inverted since the 7 segment display follows reverse logic)
    
    ;; TODO: Letters!

    CHAR_ERROR = ~(_BV(SEG_G)) ; using dash in the middle as error pattern
	
	CHAR_A = ~(_BV(SEG_A) | _BV(SEG_B) | _BV(SEG_C) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_B = ~(_BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_C = ~(_BV(SEG_A) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_D = ~(_BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_G) )
	CHAR_E = ~(_BV(SEG_A) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_F = ~(_BV(SEG_A) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_G = ~(_BV(SEG_A) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_H = ~(_BV(SEG_B) | _BV(SEG_C) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_I = ~(_BV(SEG_E) | _BV(SEG_F) )
	CHAR_J = ~(_BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) )
	CHAR_K = ~(_BV(SEG_B) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) ) ;; Strange
	CHAR_L = ~(_BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_M = ~(_BV(SEG_A) | _BV(SEG_C) | _BV(SEG_E) ) ;; Strange
	CHAR_N = ~(_BV(SEG_A) | _BV(SEG_B) | _BV(SEG_C) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_O = ~(_BV(SEG_A) | _BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_P = ~(_BV(SEG_A) | _BV(SEG_B) |  _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_Q = ~(_BV(SEG_A) | _BV(SEG_B) | _BV(SEG_C) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_R = ~(_BV(SEG_A) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_S = ~(_BV(SEG_A) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_T = ~(_BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_U = ~(_BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_F) )
	CHAR_V = ~(_BV(SEG_C) | _BV(SEG_D) | _BV(SEG_E) )
	CHAR_W = ~(_BV(SEG_B) | _BV(SEG_D) | _BV(SEG_F) ) ;; Strange
	CHAR_X = ~(_BV(SEG_C) | _BV(SEG_F) | _BV(SEG_G) ) ;; Strange
	CHAR_Y = ~(_BV(SEG_B) | _BV(SEG_C) | _BV(SEG_D) | _BV(SEG_F) | _BV(SEG_G) )
	CHAR_Z = ~(_BV(SEG_A) | _BV(SEG_B) | _BV(SEG_D) | _BV(SEG_E) | _BV(SEG_G) )