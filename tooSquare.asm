; hi GitHub!
; code last updated on 23/01/2024

setup:
ld a, $00 ; clear register a
ld hl, $cfff ; should be ld sp, $cfff
ld sp, hl
ld hl, $c000 ; temp storage address

for1to8:
inc a
cp a, $09 ; checks if 8 cycles have been done
jp nc, $007d ; yeah? then jump to end

if_i_equals1:
cp a, $01 ; is a = 1?
jp z, $0070 ; yeah? then jump to special handler

let_y_be_i*i:
i*i:
ld (hl), a ; stores a in temporary storage
ld b, a ; loads a into b...
inc b ; ...then increments it
ld a, $01 ; a will be incremented next instruction
inc a
cp a, b ; the sole purpose of b's existence
jp nc, $0022 ; have enough cycles been done? then go save a
add a, (hl) ; the actual multiplication (more like duplication)
jp $0019 ; now go back to inc a
ld c, a ; saving the result, but we ain't done yet

; stopped work because I fucked up - register a, while I was writing the code, was used for both the counter and for the addition, which is impossible
; I could probably juggle registers... I'll try it once I have the time
