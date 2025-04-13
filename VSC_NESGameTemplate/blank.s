;
; File generated by cc65 v 2.19 - Git 5cb1bc6
;
	.fopt		compiler,"cc65 v 2.19 - Git 5cb1bc6"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_vram_adr
	.import		_vram_write
	.import		_delay
	.import		_pal_fade_to
	.export		_i
	.export		_text
	.export		_palette
	.export		_main

.segment	"RODATA"

_text:
	.byte	$45,$73,$63,$61,$70,$65,$20,$56,$69,$6C,$6C,$61,$76,$61,$6E,$69
	.byte	$61,$21,$00
_palette:
	.byte	$0f
	.byte	$00
	.byte	$10
	.byte	$30
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00

.segment	"BSS"

.segment	"ZEROPAGE"
_i:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(palette); // load the BG palette
;
	lda     #<(_palette)
	ldx     #>(_palette)
	jsr     _pal_bg
;
; vram_adr(NTADR_A(12, 10)); // places text at screen position
;
	ldx     #$21
	lda     #$4C
	jsr     _vram_adr
;
; vram_write(text, sizeof(text)-1); //write Title to screen
;
	lda     #<(_text)
	ldx     #>(_text)
	jsr     pushax
	ldx     #$00
	lda     #$12
	jsr     _vram_write
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; pal_fade_to(0,4); // fade from black to normal
;
L0002:	lda     #$00
	jsr     pusha
	lda     #$04
	jsr     _pal_fade_to
;
; delay(100);
;
	lda     #$64
	jsr     _delay
;
; pal_fade_to(4,0); // fade from normal to black
;
	lda     #$04
	jsr     pusha
	lda     #$00
	jsr     _pal_fade_to
;
; delay(100);
;
	lda     #$64
	jsr     _delay
;
; while (1){
;
	jmp     L0002

.endproc

