
!spriteNum = $0D
; Finds the first (highest) index of a sprite, by its sprite number (in define)
; OUTPUT: sprite index if found, #$FF otherwise 
FindSprite:
	LDX #$0B
-	LDA $14C8,x
	BEQ +
	LDA $9E,x
	CMP #!spriteNum
	BNE +
	RTS
+	DEX : BPL -
	RTS



; Finds the first (highest) index of a sprite, by its sprite number (in Y)
; INPUT:  Y - sprite number
; OUTPUT: X - sprite index if found, #$FF otherwise 
FindSpriteNum:
	STY $00
	LDX #$0B
-	LDA $14C8,x
	BEQ +
	LDA $9E,x
	CMP $00
	BNE +
	RTS
+	DEX : BPL -
	RTS
