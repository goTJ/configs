; vim:ft=asm:foldmethod=marker
;======================================================================
; How to assemble:
;	$ nasm -f elf ${filename}.asm
;	$ gcc ${filename}.o -o ${filename}
; How to excute:
;	$ ./${filename}
; Input format:
; Output format:
; Sample input;
; Sample output;
;======================================================================
global main
extern printf, scanf

; {{{ section .data
section .data


; }}} section .data
; {{{ section .bss
section .bss


; }}} section .bss

section .text

; {{{ main:
main:
; {{{ local variable
enter $size, 0
and esp, 0fffffff0h ; }}}

leave
ret 0 ; }}}
