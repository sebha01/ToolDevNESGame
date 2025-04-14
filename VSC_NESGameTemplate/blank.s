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
	.import		_pad_poll
	.import		_vram_adr
	.import		_vram_write
	.import		_get_pad_new
	.import		_pal_fade_to
	.export		_TestLevel
	.export		_i
	.export		_currentGameState
	.export		_text
	.export		_titlePrompt
	.export		_gameLoopText
	.export		_endScreenTitle
	.export		_endScreenPrompt
	.export		_pad
	.export		_palette
	.export		_DrawTitleScreen
	.export		_GameLoop
	.export		_Fade
	.export		_main

.segment	"DATA"

_currentGameState:
	.byte	$00

.segment	"RODATA"

_TestLevel:
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
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
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_text:
	.byte	$4E,$6F,$63,$74,$75,$72,$6E,$65,$73,$20,$42,$6C,$6F,$6F,$64,$00
_titlePrompt:
	.byte	$50,$72,$65,$73,$73,$20,$53,$54,$41,$52,$54,$00
_gameLoopText:
	.byte	$54,$68,$69,$73,$20,$69,$73,$20,$74,$68,$65,$20,$67,$61,$6D,$65
	.byte	$20,$6C,$6F,$6F,$70,$00
_endScreenTitle:
	.byte	$45,$6E,$64,$20,$53,$63,$72,$65,$65,$6E,$00
_endScreenPrompt:
	.byte	$54,$6F,$20,$70,$6C,$61,$79,$20,$61,$67,$61,$69,$6E,$00
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
_pad:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ DrawTitleScreen (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawTitleScreen: near

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
; vram_adr(NTADR_A(8, 8)); // places text at screen position
;
	ldx     #$21
	lda     #$08
	jsr     _vram_adr
;
; vram_write(text, sizeof(text) - 1); //write Title to screen
;
	lda     #<(_text)
	ldx     #>(_text)
	jsr     pushax
	ldx     #$00
	lda     #$0F
	jsr     _vram_write
;
; vram_adr(NTADR_A(10, 14));
;
	ldx     #$21
	lda     #$CA
	jsr     _vram_adr
;
; vram_write(titlePrompt, sizeof(titlePrompt) - 1);
;
	lda     #<(_titlePrompt)
	ldx     #>(_titlePrompt)
	jsr     pushax
	ldx     #$00
	lda     #$0B
	jsr     _vram_write
;
; ppu_on_all(); // turn on screen
;
	jmp     _ppu_on_all

.endproc

; ---------------------------------------------------------------
; void __near__ GameLoop (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_GameLoop: near

.segment	"CODE"

;
; ppu_off(); 
;
	jsr     _ppu_off
;
; vram_adr(NAMETABLE_A);   // Set VRAM address to the top-left of the screen
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_write(TestLevel, 1024);
;
	lda     #<(_TestLevel)
	ldx     #>(_TestLevel)
	jsr     pushax
	ldx     #$04
	lda     #$00
	jsr     _vram_write
;
; pal_bg(palette);
;
	lda     #<(_palette)
	ldx     #>(_palette)
	jsr     _pal_bg
;
; ppu_on_all();
;
	jmp     _ppu_on_all

.endproc

; ---------------------------------------------------------------
; void __near__ Fade (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_Fade: near

.segment	"CODE"

;
; pal_fade_to(4,0); // fade from normal to black
;
	lda     #$04
	jsr     pusha
	lda     #$00
	jsr     _pal_fade_to
;
; pal_fade_to(0,4); // fade from black to normal
;
	lda     #$00
	jsr     pusha
	lda     #$04
	jmp     _pal_fade_to

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; DrawTitleScreen();
;
	jsr     _DrawTitleScreen
;
; pad_poll(0);
;
L000B:	lda     #$00
	jsr     _pad_poll
;
; pad = get_pad_new(0);
;
	lda     #$00
	jsr     _get_pad_new
	sta     _pad
;
; switch(currentGameState)
;
	lda     _currentGameState
;
; }
;
	beq     L000C
	cmp     #$01
	beq     L000B
	jmp     L000B
;
; if (pad & PAD_START)
;
L000C:	lda     _pad
	and     #$10
	beq     L0008
;
; currentGameState = GAME_LOOP;
;
	lda     #$01
	sta     _currentGameState
;
; GameLoop();
;
	jsr     _GameLoop
;
; else
;
	jmp     L000B
;
; Fade();
;
L0008:	jsr     _Fade
;
; break;
;
	jmp     L000B

.endproc

