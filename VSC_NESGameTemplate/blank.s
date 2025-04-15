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
	.import		_pal_spr
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_spr
	.import		_pad_poll
	.import		_pad_state
	.import		_vram_adr
	.import		_vram_fill
	.import		_vram_write
	.import		_get_pad_new
	.import		_pal_fade_to
	.export		_TestLevel
	.export		_palette
	.export		_currentGameState
	.export		_text
	.export		_titlePrompt
	.export		_endScreenTitle
	.export		_endScreenPrompt
	.export		_pad
	.export		_playerX
	.export		_playerY
	.export		_goalX
	.export		_goalY
	.export		_DrawTitleScreen
	.export		_GameLoop
	.export		_Fade
	.export		_MovePlayer
	.export		_DrawPlayer
	.export		_GetTileIndex
	.export		_CheckIfEnd
	.export		_DrawEndScreen
	.export		_main

.segment	"DATA"

_currentGameState:
	.byte	$00
_playerX:
	.byte	$0f
_playerY:
	.byte	$df
_goalX:
	.byte	$c8
_goalY:
	.byte	$c8

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
_text:
	.byte	$4E,$6F,$63,$74,$75,$72,$6E,$65,$73,$20,$42,$6C,$6F,$6F,$64,$00
_titlePrompt:
	.byte	$50,$72,$65,$73,$73,$20,$53,$54,$41,$52,$54,$00
_endScreenTitle:
	.byte	$45,$6E,$64,$20,$53,$63,$72,$65,$65,$6E,$00
_endScreenPrompt:
	.byte	$54,$6F,$20,$70,$6C,$61,$79,$20,$61,$67,$61,$69,$6E,$00

.segment	"BSS"

.segment	"ZEROPAGE"
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
; pal_spr(palette);
;
	lda     #<(_palette)
	ldx     #>(_palette)
	jsr     _pal_spr
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
; void __near__ MovePlayer (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_MovePlayer: near

.segment	"CODE"

;
; if(pad_state(0) & PAD_LEFT)
;
	lda     #$00
	jsr     _pad_state
	and     #$02
	beq     L0010
;
; if (TestLevel[GetTileIndex(playerX - 1, playerY + 1)] != 0x01)
;
	lda     _playerX
	sec
	sbc     #$01
	jsr     pusha
	lda     _playerY
	clc
	adc     #$01
	jsr     _GetTileIndex
	sta     ptr1
	txa
	clc
	adc     #>(_TestLevel)
	sta     ptr1+1
	ldy     #<(_TestLevel)
	lda     (ptr1),y
	cmp     #$01
	beq     L000F
;
; playerX--;
;
	dec     _playerX
;
; if (pad_state(0) & PAD_RIGHT)
;
L000F:	lda     #$00
L0010:	jsr     _pad_state
	and     #$01
	beq     L0012
;
; if (TestLevel[GetTileIndex(playerX + 8, playerY + 1)] != 0x01)
;
	lda     _playerX
	clc
	adc     #$08
	jsr     pusha
	lda     _playerY
	clc
	adc     #$01
	jsr     _GetTileIndex
	sta     ptr1
	txa
	clc
	adc     #>(_TestLevel)
	sta     ptr1+1
	ldy     #<(_TestLevel)
	lda     (ptr1),y
	cmp     #$01
	beq     L0011
;
; playerX++;
;
	inc     _playerX
;
; if(pad_state(0) & PAD_UP)
;
L0011:	lda     #$00
L0012:	jsr     _pad_state
	and     #$08
	beq     L0014
;
; if (TestLevel[GetTileIndex(playerX, playerY)] != 0x01)
;
	lda     _playerX
	jsr     pusha
	lda     _playerY
	jsr     _GetTileIndex
	sta     ptr1
	txa
	clc
	adc     #>(_TestLevel)
	sta     ptr1+1
	ldy     #<(_TestLevel)
	lda     (ptr1),y
	cmp     #$01
	beq     L0013
;
; playerY--;
;
	dec     _playerY
;
; if (pad_state(0) & PAD_DOWN)
;
L0013:	lda     #$00
L0014:	jsr     _pad_state
	and     #$04
	beq     L000D
;
; if (TestLevel[GetTileIndex(playerX, playerY + 9)] != 0x01)
;
	lda     _playerX
	jsr     pusha
	lda     _playerY
	clc
	adc     #$09
	jsr     _GetTileIndex
	sta     ptr1
	txa
	clc
	adc     #>(_TestLevel)
	sta     ptr1+1
	ldy     #<(_TestLevel)
	lda     (ptr1),y
	cmp     #$01
	beq     L000D
;
; playerY++;
;
	inc     _playerY
;
; }
;
L000D:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ DrawPlayer (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawPlayer: near

.segment	"CODE"

;
; oam_clear();
;
	jsr     _oam_clear
;
; oam_spr(playerX, playerY, 0x04, 0x00);
;
	jsr     decsp3
	lda     _playerX
	ldy     #$02
	sta     (sp),y
	lda     _playerY
	dey
	sta     (sp),y
	lda     #$04
	dey
	sta     (sp),y
	tya
	jsr     _oam_spr
;
; oam_spr(goalX, goalY, 0x05, 0x00);
;
	jsr     decsp3
	lda     _goalX
	ldy     #$02
	sta     (sp),y
	lda     _goalY
	dey
	sta     (sp),y
	lda     #$05
	dey
	sta     (sp),y
	tya
	jmp     _oam_spr

.endproc

; ---------------------------------------------------------------
; unsigned int __near__ GetTileIndex (unsigned char playerX, unsigned char playerY)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_GetTileIndex: near

.segment	"CODE"

;
; {
;
	jsr     pusha
;
; unsigned char tileX = playerX / 8; 
;
	ldy     #$01
	lda     (sp),y
	lsr     a
	lsr     a
	lsr     a
	jsr     pusha
;
; unsigned char tileY = playerY / 8;
;
	ldy     #$01
	lda     (sp),y
	lsr     a
	lsr     a
	lsr     a
	jsr     pusha
;
; unsigned int tileIndex = tileY * 32 + tileX;
;
	ldx     #$00
	lda     (sp,x)
	jsr     shlax4
	stx     tmp1
	asl     a
	rol     tmp1
	sta     ptr1
	ldy     #$01
	lda     (sp),y
	clc
	adc     ptr1
	ldx     tmp1
	bcc     L0002
	inx
L0002:	jsr     pushax
;
; return tileIndex;
;
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
;
; }
;
	jmp     incsp6

.endproc

; ---------------------------------------------------------------
; void __near__ CheckIfEnd (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_CheckIfEnd: near

.segment	"CODE"

;
; if (playerX == goalX & playerY == goalY)
;
	lda     _playerX
	cmp     _goalX
	jsr     booleq
	jsr     pusha0
	lda     _playerY
	cmp     _goalY
	jsr     booleq
	jsr     tosanda0
	cmp     #$00
	beq     L0002
;
; currentGameState = END_SCREEN;
;
	lda     #$02
	sta     _currentGameState
;
; DrawEndScreen();
;
	jmp     _DrawEndScreen
;
; }
;
L0002:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ DrawEndScreen (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_DrawEndScreen: near

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
; oam_clear();
;
	jsr     _oam_clear
;
; playerX = 15;
;
	lda     #$0F
	sta     _playerX
;
; playerY = 223;
;
	lda     #$DF
	sta     _playerY
;
; vram_adr(NAMETABLE_A);            // Set VRAM address to start of screen
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_fill(0x00, 1024);
;
	lda     #$00
	jsr     pusha
	ldx     #$04
	jsr     _vram_fill
;
; vram_adr(NTADR_A(8, 8)); // places text at screen position
;
	ldx     #$21
	lda     #$08
	jsr     _vram_adr
;
; vram_write(endScreenTitle, sizeof(endScreenTitle) - 1); //write Title to screen
;
	lda     #<(_endScreenTitle)
	ldx     #>(_endScreenTitle)
	jsr     pushax
	ldx     #$00
	lda     #$0A
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
; vram_adr(NTADR_A(10, 18));
;
	ldx     #$22
	lda     #$4A
	jsr     _vram_adr
;
; vram_write(endScreenPrompt, sizeof(endScreenPrompt) - 1);
;
	lda     #<(_endScreenPrompt)
	ldx     #>(_endScreenPrompt)
	jsr     pushax
	ldx     #$00
	lda     #$0D
	jsr     _vram_write
;
; ppu_on_all(); // turn on screen
;
	jmp     _ppu_on_all

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
L0011:	jsr     _DrawTitleScreen
;
; ppu_wait_nmi();
;
L0002:	jsr     _ppu_wait_nmi
;
; pad_poll(0);
;
	lda     #$00
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
	beq     L000F
	cmp     #$01
	beq     L000A
	cmp     #$02
	beq     L0010
	jmp     L0002
;
; if (pad_state(0) & PAD_START)
;
L000F:	jsr     _pad_state
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
	jmp     L0002
;
; Fade();
;
L0008:	jsr     _Fade
;
; break;
;
	jmp     L0002
;
; MovePlayer();
;
L000A:	jsr     _MovePlayer
;
; DrawPlayer();
;
	jsr     _DrawPlayer
;
; CheckIfEnd();
;
	jsr     _CheckIfEnd
;
; break;
;
	jmp     L0002
;
; if (pad_state(0) & PAD_START)
;
L0010:	lda     #$00
	jsr     _pad_state
	and     #$10
	beq     L000C
;
; currentGameState = START_SCREEN;
;
	lda     #$00
	sta     _currentGameState
;
; else
;
	jmp     L0011
;
; Fade();
;
L000C:	jsr     _Fade
;
; break;
;
	jmp     L0002

.endproc

