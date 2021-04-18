; Disassembly of file: write_vga_desktop.o
; Fri Sep 23 16:32:47 2016
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386



CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0007 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000D _ 89. 45, F4
        xor     eax, eax                                ; 0010 _ 31. C0
        sub     esp, 12                                 ; 0012 _ 83. EC, 0C
        lea     eax, [ebp-14H]                          ; 0015 _ 8D. 45, EC
        push    eax                                     ; 0018 _ 50
        call    initBootInfo                            ; 0019 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001E _ 83. C4, 10
        mov     eax, dword [ebp-14H]                    ; 0021 _ 8B. 45, EC
        mov     dword [ebp-20H], eax                    ; 0024 _ 89. 45, E0
        movzx   eax, word [ebp-10H]                     ; 0027 _ 0F B7. 45, F0
        cwde                                            ; 002B _ 98
        mov     dword [ebp-1CH], eax                    ; 002C _ 89. 45, E4
        movzx   eax, word [ebp-0EH]                     ; 002F _ 0F B7. 45, F2
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-18H], eax                    ; 0034 _ 89. 45, E8
        call    init_palette                            ; 0037 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-18H]                    ; 003C _ 8B. 45, E8
        lea     edx, [eax-1DH]                          ; 003F _ 8D. 50, E3
        mov     eax, dword [ebp-1CH]                    ; 0042 _ 8B. 45, E4
        sub     eax, 1                                  ; 0045 _ 83. E8, 01
        sub     esp, 4                                  ; 0048 _ 83. EC, 04
        push    edx                                     ; 004B _ 52
        push    eax                                     ; 004C _ 50
        push    0                                       ; 004D _ 6A, 00
        push    0                                       ; 004F _ 6A, 00
        push    14                                      ; 0051 _ 6A, 0E
        push    dword [ebp-1CH]                         ; 0053 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0056 _ FF. 75, E0
        call    boxfill8                                ; 0059 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005E _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0061 _ 8B. 45, E8
        lea     ecx, [eax-1CH]                          ; 0064 _ 8D. 48, E4
        mov     eax, dword [ebp-1CH]                    ; 0067 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 006A _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 006D _ 8B. 45, E8
        sub     eax, 28                                 ; 0070 _ 83. E8, 1C
        sub     esp, 4                                  ; 0073 _ 83. EC, 04
        push    ecx                                     ; 0076 _ 51
        push    edx                                     ; 0077 _ 52
        push    eax                                     ; 0078 _ 50
        push    0                                       ; 0079 _ 6A, 00
        push    8                                       ; 007B _ 6A, 08
        push    dword [ebp-1CH]                         ; 007D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0080 _ FF. 75, E0
        call    boxfill8                                ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0088 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 008B _ 8B. 45, E8
        lea     ecx, [eax-1BH]                          ; 008E _ 8D. 48, E5
        mov     eax, dword [ebp-1CH]                    ; 0091 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 0094 _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 0097 _ 8B. 45, E8
        sub     eax, 27                                 ; 009A _ 83. E8, 1B
        sub     esp, 4                                  ; 009D _ 83. EC, 04
        push    ecx                                     ; 00A0 _ 51
        push    edx                                     ; 00A1 _ 52
        push    eax                                     ; 00A2 _ 50
        push    0                                       ; 00A3 _ 6A, 00
        push    7                                       ; 00A5 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00A7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00AA _ FF. 75, E0
        call    boxfill8                                ; 00AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B2 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00B5 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 00B8 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 00BB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 00BE _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 00C1 _ 8B. 45, E8
        sub     eax, 26                                 ; 00C4 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C7 _ 83. EC, 04
        push    ecx                                     ; 00CA _ 51
        push    edx                                     ; 00CB _ 52
        push    eax                                     ; 00CC _ 50
        push    0                                       ; 00CD _ 6A, 00
        push    8                                       ; 00CF _ 6A, 08
        push    dword [ebp-1CH]                         ; 00D1 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00D4 _ FF. 75, E0
        call    boxfill8                                ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DC _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00DF _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 00E2 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 00E5 _ 8B. 45, E8
        sub     eax, 24                                 ; 00E8 _ 83. E8, 18
        sub     esp, 4                                  ; 00EB _ 83. EC, 04
        push    edx                                     ; 00EE _ 52
        push    59                                      ; 00EF _ 6A, 3B
        push    eax                                     ; 00F1 _ 50
        push    3                                       ; 00F2 _ 6A, 03
        push    7                                       ; 00F4 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00F6 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00F9 _ FF. 75, E0
        call    boxfill8                                ; 00FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0101 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0104 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 0107 _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 010A _ 8B. 45, E8
        sub     eax, 24                                 ; 010D _ 83. E8, 18
        sub     esp, 4                                  ; 0110 _ 83. EC, 04
        push    edx                                     ; 0113 _ 52
        push    2                                       ; 0114 _ 6A, 02
        push    eax                                     ; 0116 _ 50
        push    2                                       ; 0117 _ 6A, 02
        push    7                                       ; 0119 _ 6A, 07
        push    dword [ebp-1CH]                         ; 011B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 011E _ FF. 75, E0
        call    boxfill8                                ; 0121 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0126 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0129 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 012C _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 012F _ 8B. 45, E8
        sub     eax, 4                                  ; 0132 _ 83. E8, 04
        sub     esp, 4                                  ; 0135 _ 83. EC, 04
        push    edx                                     ; 0138 _ 52
        push    59                                      ; 0139 _ 6A, 3B
        push    eax                                     ; 013B _ 50
        push    3                                       ; 013C _ 6A, 03
        push    15                                      ; 013E _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0140 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0143 _ FF. 75, E0
        call    boxfill8                                ; 0146 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 014B _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 014E _ 8B. 45, E8
        lea     edx, [eax-5H]                           ; 0151 _ 8D. 50, FB
        mov     eax, dword [ebp-18H]                    ; 0154 _ 8B. 45, E8
        sub     eax, 23                                 ; 0157 _ 83. E8, 17
        sub     esp, 4                                  ; 015A _ 83. EC, 04
        push    edx                                     ; 015D _ 52
        push    59                                      ; 015E _ 6A, 3B
        push    eax                                     ; 0160 _ 50
        push    59                                      ; 0161 _ 6A, 3B
        push    15                                      ; 0163 _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0165 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0168 _ FF. 75, E0
        call    boxfill8                                ; 016B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0170 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0173 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 0176 _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0179 _ 8B. 45, E8
        sub     eax, 3                                  ; 017C _ 83. E8, 03
        sub     esp, 4                                  ; 017F _ 83. EC, 04
        push    edx                                     ; 0182 _ 52
        push    59                                      ; 0183 _ 6A, 3B
        push    eax                                     ; 0185 _ 50
        push    2                                       ; 0186 _ 6A, 02
        push    0                                       ; 0188 _ 6A, 00
        push    dword [ebp-1CH]                         ; 018A _ FF. 75, E4
        push    dword [ebp-20H]                         ; 018D _ FF. 75, E0
        call    boxfill8                                ; 0190 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0195 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0198 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 019B _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 019E _ 8B. 45, E8
        sub     eax, 24                                 ; 01A1 _ 83. E8, 18
        sub     esp, 4                                  ; 01A4 _ 83. EC, 04
        push    edx                                     ; 01A7 _ 52
        push    60                                      ; 01A8 _ 6A, 3C
        push    eax                                     ; 01AA _ 50
        push    60                                      ; 01AB _ 6A, 3C
        push    0                                       ; 01AD _ 6A, 00
        push    dword [ebp-1CH]                         ; 01AF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01B2 _ FF. 75, E0
        call    boxfill8                                ; 01B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01BA _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01BD _ 8B. 45, E8
        lea     ebx, [eax-18H]                          ; 01C0 _ 8D. 58, E8
        mov     eax, dword [ebp-1CH]                    ; 01C3 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 01C6 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 01C9 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 01CC _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 01CF _ 8B. 45, E4
        sub     eax, 47                                 ; 01D2 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D5 _ 83. EC, 04
        push    ebx                                     ; 01D8 _ 53
        push    ecx                                     ; 01D9 _ 51
        push    edx                                     ; 01DA _ 52
        push    eax                                     ; 01DB _ 50
        push    15                                      ; 01DC _ 6A, 0F
        push    dword [ebp-1CH]                         ; 01DE _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01E1 _ FF. 75, E0
        call    boxfill8                                ; 01E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E9 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01EC _ 8B. 45, E8
        lea     ebx, [eax-4H]                           ; 01EF _ 8D. 58, FC
        mov     eax, dword [ebp-1CH]                    ; 01F2 _ 8B. 45, E4
        lea     ecx, [eax-2FH]                          ; 01F5 _ 8D. 48, D1
        mov     eax, dword [ebp-18H]                    ; 01F8 _ 8B. 45, E8
        lea     edx, [eax-17H]                          ; 01FB _ 8D. 50, E9
        mov     eax, dword [ebp-1CH]                    ; 01FE _ 8B. 45, E4
        sub     eax, 47                                 ; 0201 _ 83. E8, 2F
        sub     esp, 4                                  ; 0204 _ 83. EC, 04
        push    ebx                                     ; 0207 _ 53
        push    ecx                                     ; 0208 _ 51
        push    edx                                     ; 0209 _ 52
        push    eax                                     ; 020A _ 50
        push    15                                      ; 020B _ 6A, 0F
        push    dword [ebp-1CH]                         ; 020D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0210 _ FF. 75, E0
        call    boxfill8                                ; 0213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0218 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 021B _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 021E _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0221 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 0224 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 0227 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 022A _ 8D. 50, FD
        mov     eax, dword [ebp-1CH]                    ; 022D _ 8B. 45, E4
        sub     eax, 47                                 ; 0230 _ 83. E8, 2F
        sub     esp, 4                                  ; 0233 _ 83. EC, 04
        push    ebx                                     ; 0236 _ 53
        push    ecx                                     ; 0237 _ 51
        push    edx                                     ; 0238 _ 52
        push    eax                                     ; 0239 _ 50
        push    7                                       ; 023A _ 6A, 07
        push    dword [ebp-1CH]                         ; 023C _ FF. 75, E4
        push    dword [ebp-20H]                         ; 023F _ FF. 75, E0
        call    boxfill8                                ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0247 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 024A _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 024D _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0250 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 0253 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 0256 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 0259 _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 025C _ 8B. 45, E4
        sub     eax, 3                                  ; 025F _ 83. E8, 03
        sub     esp, 4                                  ; 0262 _ 83. EC, 04
        push    ebx                                     ; 0265 _ 53
        push    ecx                                     ; 0266 _ 51
        push    edx                                     ; 0267 _ 52
        push    eax                                     ; 0268 _ 50
        push    7                                       ; 0269 _ 6A, 07
        push    dword [ebp-1CH]                         ; 026B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 026E _ FF. 75, E0
        call    boxfill8                                ; 0271 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0276 _ 83. C4, 20
        sub     esp, 8                                  ; 0279 _ 83. EC, 08
        push    systemFont+410H                         ; 027C _ 68, 00000410(d)
        push    7                                       ; 0281 _ 6A, 07
        push    8                                       ; 0283 _ 6A, 08
        push    8                                       ; 0285 _ 6A, 08
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showFont8                               ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
        sub     esp, 8                                  ; 0295 _ 83. EC, 08
        push    systemFont+420H                         ; 0298 _ 68, 00000420(d)
        push    7                                       ; 029D _ 6A, 07
        push    8                                       ; 029F _ 6A, 08
        push    16                                      ; 02A1 _ 6A, 10
        push    dword [ebp-1CH]                         ; 02A3 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02A6 _ FF. 75, E0
        call    showFont8                               ; 02A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AE _ 83. C4, 20
        sub     esp, 8                                  ; 02B1 _ 83. EC, 08
        push    systemFont+430H                         ; 02B4 _ 68, 00000430(d)
        push    7                                       ; 02B9 _ 6A, 07
        push    8                                       ; 02BB _ 6A, 08
        push    24                                      ; 02BD _ 6A, 18
        push    dword [ebp-1CH]                         ; 02BF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02C2 _ FF. 75, E0
        call    showFont8                               ; 02C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CA _ 83. C4, 20
        sub     esp, 8                                  ; 02CD _ 83. EC, 08
        push    systemFont+310H                         ; 02D0 _ 68, 00000310(d)
        push    7                                       ; 02D5 _ 6A, 07
        push    8                                       ; 02D7 _ 6A, 08
        push    32                                      ; 02D9 _ 6A, 20
        push    dword [ebp-1CH]                         ; 02DB _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02DE _ FF. 75, E0
        call    showFont8                               ; 02E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E6 _ 83. C4, 20
        sub     esp, 8                                  ; 02E9 _ 83. EC, 08
        push    systemFont+320H                         ; 02EC _ 68, 00000320(d)
        push    7                                       ; 02F1 _ 6A, 07
        push    8                                       ; 02F3 _ 6A, 08
        push    48                                      ; 02F5 _ 6A, 30
        push    dword [ebp-1CH]                         ; 02F7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02FA _ FF. 75, E0
        call    showFont8                               ; 02FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0302 _ 83. C4, 20
        sub     esp, 8                                  ; 0305 _ 83. EC, 08
        push    systemFont+330H                         ; 0308 _ 68, 00000330(d)
        push    7                                       ; 030D _ 6A, 07
        push    8                                       ; 030F _ 6A, 08
        push    64                                      ; 0311 _ 6A, 40
        push    dword [ebp-1CH]                         ; 0313 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0316 _ FF. 75, E0
        call    showFont8                               ; 0319 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 031E _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0321 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0326 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0328 _ 55
        mov     ebp, esp                                ; 0329 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 032B _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 032E _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0334 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0337 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 033D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0340 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 0346 _ 5D
        ret                                             ; 0347 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 0348 _ 55
        mov     ebp, esp                                ; 0349 _ 89. E5
        sub     esp, 8                                  ; 034B _ 83. EC, 08
        sub     esp, 4                                  ; 034E _ 83. EC, 04
        push    table_rgb.1443                          ; 0351 _ 68, 00000020(d)
        push    15                                      ; 0356 _ 6A, 0F
        push    0                                       ; 0358 _ 6A, 00
        call    set_palette                             ; 035A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 035F _ 83. C4, 10
        nop                                             ; 0362 _ 90
        leave                                           ; 0363 _ C9
        ret                                             ; 0364 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0365 _ 55
        mov     ebp, esp                                ; 0366 _ 89. E5
        sub     esp, 24                                 ; 0368 _ 83. EC, 18
        call    io_load_eflags                          ; 036B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0370 _ 89. 45, F4
        call    io_cli                                  ; 0373 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0378 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 037B _ FF. 75, 08
        push    968                                     ; 037E _ 68, 000003C8
        call    io_out8                                 ; 0383 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0388 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 038B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 038E _ 89. 45, F0
        jmp     ?_003                                   ; 0391 _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 0393 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0396 _ 0F B6. 00
        shr     al, 2                                   ; 0399 _ C0. E8, 02
        movzx   eax, al                                 ; 039C _ 0F B6. C0
        sub     esp, 8                                  ; 039F _ 83. EC, 08
        push    eax                                     ; 03A2 _ 50
        push    969                                     ; 03A3 _ 68, 000003C9
        call    io_out8                                 ; 03A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03AD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03B0 _ 8B. 45, 10
        add     eax, 1                                  ; 03B3 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 03B6 _ 0F B6. 00
        shr     al, 2                                   ; 03B9 _ C0. E8, 02
        movzx   eax, al                                 ; 03BC _ 0F B6. C0
        sub     esp, 8                                  ; 03BF _ 83. EC, 08
        push    eax                                     ; 03C2 _ 50
        push    969                                     ; 03C3 _ 68, 000003C9
        call    io_out8                                 ; 03C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03CD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03D0 _ 8B. 45, 10
        add     eax, 2                                  ; 03D3 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 03D6 _ 0F B6. 00
        shr     al, 2                                   ; 03D9 _ C0. E8, 02
        movzx   eax, al                                 ; 03DC _ 0F B6. C0
        sub     esp, 8                                  ; 03DF _ 83. EC, 08
        push    eax                                     ; 03E2 _ 50
        push    969                                     ; 03E3 _ 68, 000003C9
        call    io_out8                                 ; 03E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03ED _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 03F0 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 03F4 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 03F8 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 03FB _ 3B. 45, 0C
        jle     ?_002                                   ; 03FE _ 7E, 93
        sub     esp, 12                                 ; 0400 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0403 _ FF. 75, F4
        call    io_store_eflags                         ; 0406 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 040B _ 83. C4, 10
        nop                                             ; 040E _ 90
        leave                                           ; 040F _ C9
        ret                                             ; 0410 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0411 _ 55
        mov     ebp, esp                                ; 0412 _ 89. E5
        sub     esp, 20                                 ; 0414 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0417 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 041A _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 041D _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0420 _ 89. 45, FC
        jmp     ?_007                                   ; 0423 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0425 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0428 _ 89. 45, F8
        jmp     ?_006                                   ; 042B _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 042D _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0430 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0434 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0436 _ 8B. 45, F8
        add     eax, edx                                ; 0439 _ 01. D0
        mov     edx, eax                                ; 043B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 043D _ 8B. 45, 08
        add     edx, eax                                ; 0440 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0442 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0446 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0448 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 044C _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 044F _ 3B. 45, 1C
        jle     ?_005                                   ; 0452 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0454 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 0458 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 045B _ 3B. 45, 20
        jle     ?_004                                   ; 045E _ 7E, C5
        leave                                           ; 0460 _ C9
        ret                                             ; 0461 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0462 _ 55
        mov     ebp, esp                                ; 0463 _ 89. E5
        sub     esp, 20                                 ; 0465 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0468 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 046B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 046E _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0475 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 047A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 047D _ 8B. 45, 1C
        add     eax, edx                                ; 0480 _ 01. D0
        movzx   eax, byte [eax]                         ; 0482 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0485 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0488 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 048C _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 048E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0491 _ 8B. 45, FC
        add     eax, edx                                ; 0494 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0496 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 049A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 049C _ 8B. 45, 10
        add     eax, edx                                ; 049F _ 01. D0
        mov     edx, eax                                ; 04A1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04A3 _ 8B. 45, 08
        add     edx, eax                                ; 04A6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04A8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04AC _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 04AE _ 0F BE. 45, FB
        and     eax, 40H                                ; 04B2 _ 83. E0, 40
        test    eax, eax                                ; 04B5 _ 85. C0
        jz      ?_010                                   ; 04B7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04B9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04BC _ 8B. 45, FC
        add     eax, edx                                ; 04BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04C1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04C5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04C7 _ 8B. 45, 10
        add     eax, edx                                ; 04CA _ 01. D0
        lea     edx, [eax+1H]                           ; 04CC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 04CF _ 8B. 45, 08
        add     edx, eax                                ; 04D2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04D4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04D8 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 04DA _ 0F BE. 45, FB
        and     eax, 20H                                ; 04DE _ 83. E0, 20
        test    eax, eax                                ; 04E1 _ 85. C0
        jz      ?_011                                   ; 04E3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04E5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04E8 _ 8B. 45, FC
        add     eax, edx                                ; 04EB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04ED _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04F1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04F3 _ 8B. 45, 10
        add     eax, edx                                ; 04F6 _ 01. D0
        lea     edx, [eax+2H]                           ; 04F8 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 04FB _ 8B. 45, 08
        add     edx, eax                                ; 04FE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0500 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0504 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0506 _ 0F BE. 45, FB
        and     eax, 10H                                ; 050A _ 83. E0, 10
        test    eax, eax                                ; 050D _ 85. C0
        jz      ?_012                                   ; 050F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0511 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0514 _ 8B. 45, FC
        add     eax, edx                                ; 0517 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0519 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 051D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 051F _ 8B. 45, 10
        add     eax, edx                                ; 0522 _ 01. D0
        lea     edx, [eax+3H]                           ; 0524 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0527 _ 8B. 45, 08
        add     edx, eax                                ; 052A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 052C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0530 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0532 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0536 _ 83. E0, 08
        test    eax, eax                                ; 0539 _ 85. C0
        jz      ?_013                                   ; 053B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 053D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0540 _ 8B. 45, FC
        add     eax, edx                                ; 0543 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0545 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0549 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 054B _ 8B. 45, 10
        add     eax, edx                                ; 054E _ 01. D0
        lea     edx, [eax+4H]                           ; 0550 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0553 _ 8B. 45, 08
        add     edx, eax                                ; 0556 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0558 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 055C _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 055E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0562 _ 83. E0, 04
        test    eax, eax                                ; 0565 _ 85. C0
        jz      ?_014                                   ; 0567 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0569 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 056C _ 8B. 45, FC
        add     eax, edx                                ; 056F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0571 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0575 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0577 _ 8B. 45, 10
        add     eax, edx                                ; 057A _ 01. D0
        lea     edx, [eax+5H]                           ; 057C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 057F _ 8B. 45, 08
        add     edx, eax                                ; 0582 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0584 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0588 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 058A _ 0F BE. 45, FB
        and     eax, 02H                                ; 058E _ 83. E0, 02
        test    eax, eax                                ; 0591 _ 85. C0
        jz      ?_015                                   ; 0593 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0595 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0598 _ 8B. 45, FC
        add     eax, edx                                ; 059B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 059D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05A1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05A3 _ 8B. 45, 10
        add     eax, edx                                ; 05A6 _ 01. D0
        lea     edx, [eax+6H]                           ; 05A8 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 05AB _ 8B. 45, 08
        add     edx, eax                                ; 05AE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05B4 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05B6 _ 0F BE. 45, FB
        and     eax, 01H                                ; 05BA _ 83. E0, 01
        test    eax, eax                                ; 05BD _ 85. C0
        jz      ?_016                                   ; 05BF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05C1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05C4 _ 8B. 45, FC
        add     eax, edx                                ; 05C7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05C9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05CD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05CF _ 8B. 45, 10
        add     eax, edx                                ; 05D2 _ 01. D0
        lea     edx, [eax+7H]                           ; 05D4 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 05D7 _ 8B. 45, 08
        add     edx, eax                                ; 05DA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05DC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E0 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 05E2 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 05E6 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 05EA _ 0F 8E, FFFFFE8A
        leave                                           ; 05F0 _ C9
        ret                                             ; 05F1 _ C3
; showFont8 End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1443:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........


