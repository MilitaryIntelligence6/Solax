; Disassembly of file: write_vga_desktop.o
; Fri Sep 30 11:50:22 2016
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
        push    fontA                                   ; 027C _ 68, 00000000(d)
        push    7                                       ; 0281 _ 6A, 07
        push    8                                       ; 0283 _ 6A, 08
        push    8                                       ; 0285 _ 6A, 08
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showFont8                               ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
        sub     esp, 8                                  ; 0295 _ 83. EC, 08
        push    systemFont+410H                         ; 0298 _ 68, 00000410(d)
        push    7                                       ; 029D _ 6A, 07
        push    8                                       ; 029F _ 6A, 08
        push    8                                       ; 02A1 _ 6A, 08
        push    dword [ebp-1CH]                         ; 02A3 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02A6 _ FF. 75, E0
        call    showFont8                               ; 02A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AE _ 83. C4, 20
        sub     esp, 8                                  ; 02B1 _ 83. EC, 08
        push    systemFont+420H                         ; 02B4 _ 68, 00000420(d)
        push    7                                       ; 02B9 _ 6A, 07
        push    8                                       ; 02BB _ 6A, 08
        push    16                                      ; 02BD _ 6A, 10
        push    dword [ebp-1CH]                         ; 02BF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02C2 _ FF. 75, E0
        call    showFont8                               ; 02C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CA _ 83. C4, 20
        sub     esp, 8                                  ; 02CD _ 83. EC, 08
        push    systemFont+430H                         ; 02D0 _ 68, 00000430(d)
        push    7                                       ; 02D5 _ 6A, 07
        push    8                                       ; 02D7 _ 6A, 08
        push    24                                      ; 02D9 _ 6A, 18
        push    dword [ebp-1CH]                         ; 02DB _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02DE _ FF. 75, E0
        call    showFont8                               ; 02E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E6 _ 83. C4, 20
        sub     esp, 8                                  ; 02E9 _ 83. EC, 08
        push    systemFont+310H                         ; 02EC _ 68, 00000310(d)
        push    7                                       ; 02F1 _ 6A, 07
        push    8                                       ; 02F3 _ 6A, 08
        push    32                                      ; 02F5 _ 6A, 20
        push    dword [ebp-1CH]                         ; 02F7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02FA _ FF. 75, E0
        call    showFont8                               ; 02FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0302 _ 83. C4, 20
        sub     esp, 8                                  ; 0305 _ 83. EC, 08
        push    systemFont+320H                         ; 0308 _ 68, 00000320(d)
        push    7                                       ; 030D _ 6A, 07
        push    8                                       ; 030F _ 6A, 08
        push    48                                      ; 0311 _ 6A, 30
        push    dword [ebp-1CH]                         ; 0313 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0316 _ FF. 75, E0
        call    showFont8                               ; 0319 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 031E _ 83. C4, 20
        sub     esp, 8                                  ; 0321 _ 83. EC, 08
        push    systemFont+330H                         ; 0324 _ 68, 00000330(d)
        push    7                                       ; 0329 _ 6A, 07
        push    8                                       ; 032B _ 6A, 08
        push    64                                      ; 032D _ 6A, 40
        push    dword [ebp-1CH]                         ; 032F _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0332 _ FF. 75, E0
        call    showFont8                               ; 0335 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 033A _ 83. C4, 20
        sub     esp, 8                                  ; 033D _ 83. EC, 08
        push    ?_031                                   ; 0340 _ 68, 00000000(d)
        push    7                                       ; 0345 _ 6A, 07
        push    8                                       ; 0347 _ 6A, 08
        push    72                                      ; 0349 _ 6A, 48
        push    dword [ebp-1CH]                         ; 034B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 034E _ FF. 75, E0
        call    showString                              ; 0351 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0356 _ 83. C4, 20
        sub     esp, 8                                  ; 0359 _ 83. EC, 08
        push    14                                      ; 035C _ 6A, 0E
        push    mcursor                                 ; 035E _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 0363 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0368 _ 83. C4, 10
        push    16                                      ; 036B _ 6A, 10
        push    mcursor                                 ; 036D _ 68, 00000000(d)
        push    80                                      ; 0372 _ 6A, 50
        push    80                                      ; 0374 _ 6A, 50
        push    16                                      ; 0376 _ 6A, 10
        push    16                                      ; 0378 _ 6A, 10
        push    dword [ebp-1CH]                         ; 037A _ FF. 75, E4
        push    dword [ebp-20H]                         ; 037D _ FF. 75, E0
        call    putblock                                ; 0380 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0385 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0388 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 038D _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 038F _ 55
        mov     ebp, esp                                ; 0390 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0392 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0395 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 039B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 039E _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 03A4 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 03A7 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 03AD _ 5D
        ret                                             ; 03AE _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 03AF _ 55
        mov     ebp, esp                                ; 03B0 _ 89. E5
        sub     esp, 24                                 ; 03B2 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 03B5 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 03B8 _ 88. 45, F4
        jmp     ?_003                                   ; 03BB _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 03BD _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03C0 _ 0F B6. 00
        movzx   eax, al                                 ; 03C3 _ 0F B6. C0
        shl     eax, 4                                  ; 03C6 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 03C9 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 03CF _ 0F BE. 45, F4
        sub     esp, 8                                  ; 03D3 _ 83. EC, 08
        push    edx                                     ; 03D6 _ 52
        push    eax                                     ; 03D7 _ 50
        push    dword [ebp+14H]                         ; 03D8 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 03DB _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 03DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03E1 _ FF. 75, 08
        call    showFont8                               ; 03E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03E9 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 03EC _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 03F0 _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 03F4 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03F7 _ 0F B6. 00
        test    al, al                                  ; 03FA _ 84. C0
        jnz     ?_002                                   ; 03FC _ 75, BF
        leave                                           ; 03FE _ C9
        ret                                             ; 03FF _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0400 _ 55
        mov     ebp, esp                                ; 0401 _ 89. E5
        sub     esp, 8                                  ; 0403 _ 83. EC, 08
        sub     esp, 4                                  ; 0406 _ 83. EC, 04
        push    table_rgb.1474                          ; 0409 _ 68, 00000020(d)
        push    15                                      ; 040E _ 6A, 0F
        push    0                                       ; 0410 _ 6A, 00
        call    set_palette                             ; 0412 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0417 _ 83. C4, 10
        nop                                             ; 041A _ 90
        leave                                           ; 041B _ C9
        ret                                             ; 041C _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 041D _ 55
        mov     ebp, esp                                ; 041E _ 89. E5
        sub     esp, 24                                 ; 0420 _ 83. EC, 18
        call    io_load_eflags                          ; 0423 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0428 _ 89. 45, F4
        call    io_cli                                  ; 042B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0430 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0433 _ FF. 75, 08
        push    968                                     ; 0436 _ 68, 000003C8
        call    io_out8                                 ; 043B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0440 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0443 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0446 _ 89. 45, F0
        jmp     ?_005                                   ; 0449 _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 044B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 044E _ 0F B6. 00
        shr     al, 2                                   ; 0451 _ C0. E8, 02
        movzx   eax, al                                 ; 0454 _ 0F B6. C0
        sub     esp, 8                                  ; 0457 _ 83. EC, 08
        push    eax                                     ; 045A _ 50
        push    969                                     ; 045B _ 68, 000003C9
        call    io_out8                                 ; 0460 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0465 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0468 _ 8B. 45, 10
        add     eax, 1                                  ; 046B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 046E _ 0F B6. 00
        shr     al, 2                                   ; 0471 _ C0. E8, 02
        movzx   eax, al                                 ; 0474 _ 0F B6. C0
        sub     esp, 8                                  ; 0477 _ 83. EC, 08
        push    eax                                     ; 047A _ 50
        push    969                                     ; 047B _ 68, 000003C9
        call    io_out8                                 ; 0480 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0485 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0488 _ 8B. 45, 10
        add     eax, 2                                  ; 048B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 048E _ 0F B6. 00
        shr     al, 2                                   ; 0491 _ C0. E8, 02
        movzx   eax, al                                 ; 0494 _ 0F B6. C0
        sub     esp, 8                                  ; 0497 _ 83. EC, 08
        push    eax                                     ; 049A _ 50
        push    969                                     ; 049B _ 68, 000003C9
        call    io_out8                                 ; 04A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A5 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 04A8 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 04AC _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 04B0 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 04B3 _ 3B. 45, 0C
        jle     ?_004                                   ; 04B6 _ 7E, 93
        sub     esp, 12                                 ; 04B8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 04BB _ FF. 75, F4
        call    io_store_eflags                         ; 04BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04C3 _ 83. C4, 10
        nop                                             ; 04C6 _ 90
        leave                                           ; 04C7 _ C9
        ret                                             ; 04C8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04C9 _ 55
        mov     ebp, esp                                ; 04CA _ 89. E5
        sub     esp, 20                                 ; 04CC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04CF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04D2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04D5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04D8 _ 89. 45, FC
        jmp     ?_009                                   ; 04DB _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 04DD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04E0 _ 89. 45, F8
        jmp     ?_008                                   ; 04E3 _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 04E5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04E8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04EC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04EE _ 8B. 45, F8
        add     eax, edx                                ; 04F1 _ 01. D0
        mov     edx, eax                                ; 04F3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04F5 _ 8B. 45, 08
        add     edx, eax                                ; 04F8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04FA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FE _ 88. 02
        add     dword [ebp-8H], 1                       ; 0500 _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0504 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0507 _ 3B. 45, 1C
        jle     ?_007                                   ; 050A _ 7E, D9
        add     dword [ebp-4H], 1                       ; 050C _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 0510 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0513 _ 3B. 45, 20
        jle     ?_006                                   ; 0516 _ 7E, C5
        leave                                           ; 0518 _ C9
        ret                                             ; 0519 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 051A _ 55
        mov     ebp, esp                                ; 051B _ 89. E5
        sub     esp, 20                                 ; 051D _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0520 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0523 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0526 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 052D _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 0532 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0535 _ 8B. 45, 1C
        add     eax, edx                                ; 0538 _ 01. D0
        movzx   eax, byte [eax]                         ; 053A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 053D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0540 _ 80. 7D, FB, 00
        jns     ?_011                                   ; 0544 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0546 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0549 _ 8B. 45, FC
        add     eax, edx                                ; 054C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 054E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0552 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0554 _ 8B. 45, 10
        add     eax, edx                                ; 0557 _ 01. D0
        mov     edx, eax                                ; 0559 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 055B _ 8B. 45, 08
        add     edx, eax                                ; 055E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0560 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0564 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0566 _ 0F BE. 45, FB
        and     eax, 40H                                ; 056A _ 83. E0, 40
        test    eax, eax                                ; 056D _ 85. C0
        jz      ?_012                                   ; 056F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0571 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0574 _ 8B. 45, FC
        add     eax, edx                                ; 0577 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0579 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 057D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 057F _ 8B. 45, 10
        add     eax, edx                                ; 0582 _ 01. D0
        lea     edx, [eax+1H]                           ; 0584 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0587 _ 8B. 45, 08
        add     edx, eax                                ; 058A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 058C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0590 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0592 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0596 _ 83. E0, 20
        test    eax, eax                                ; 0599 _ 85. C0
        jz      ?_013                                   ; 059B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 059D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A0 _ 8B. 45, FC
        add     eax, edx                                ; 05A3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05A9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05AB _ 8B. 45, 10
        add     eax, edx                                ; 05AE _ 01. D0
        lea     edx, [eax+2H]                           ; 05B0 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 05B3 _ 8B. 45, 08
        add     edx, eax                                ; 05B6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05BC _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 05BE _ 0F BE. 45, FB
        and     eax, 10H                                ; 05C2 _ 83. E0, 10
        test    eax, eax                                ; 05C5 _ 85. C0
        jz      ?_014                                   ; 05C7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05C9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05CC _ 8B. 45, FC
        add     eax, edx                                ; 05CF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05D1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05D5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05D7 _ 8B. 45, 10
        add     eax, edx                                ; 05DA _ 01. D0
        lea     edx, [eax+3H]                           ; 05DC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05DF _ 8B. 45, 08
        add     edx, eax                                ; 05E2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E8 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 05EA _ 0F BE. 45, FB
        and     eax, 08H                                ; 05EE _ 83. E0, 08
        test    eax, eax                                ; 05F1 _ 85. C0
        jz      ?_015                                   ; 05F3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05F5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05F8 _ 8B. 45, FC
        add     eax, edx                                ; 05FB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05FD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0601 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0603 _ 8B. 45, 10
        add     eax, edx                                ; 0606 _ 01. D0
        lea     edx, [eax+4H]                           ; 0608 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 060B _ 8B. 45, 08
        add     edx, eax                                ; 060E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0610 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0614 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0616 _ 0F BE. 45, FB
        and     eax, 04H                                ; 061A _ 83. E0, 04
        test    eax, eax                                ; 061D _ 85. C0
        jz      ?_016                                   ; 061F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0621 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0624 _ 8B. 45, FC
        add     eax, edx                                ; 0627 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0629 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 062D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 062F _ 8B. 45, 10
        add     eax, edx                                ; 0632 _ 01. D0
        lea     edx, [eax+5H]                           ; 0634 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0637 _ 8B. 45, 08
        add     edx, eax                                ; 063A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 063C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0640 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0642 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0646 _ 83. E0, 02
        test    eax, eax                                ; 0649 _ 85. C0
        jz      ?_017                                   ; 064B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 064D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0650 _ 8B. 45, FC
        add     eax, edx                                ; 0653 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0655 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0659 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 065B _ 8B. 45, 10
        add     eax, edx                                ; 065E _ 01. D0
        lea     edx, [eax+6H]                           ; 0660 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0663 _ 8B. 45, 08
        add     edx, eax                                ; 0666 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0668 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 066C _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 066E _ 0F BE. 45, FB
        and     eax, 01H                                ; 0672 _ 83. E0, 01
        test    eax, eax                                ; 0675 _ 85. C0
        jz      ?_018                                   ; 0677 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0679 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 067C _ 8B. 45, FC
        add     eax, edx                                ; 067F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0681 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0685 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0687 _ 8B. 45, 10
        add     eax, edx                                ; 068A _ 01. D0
        lea     edx, [eax+7H]                           ; 068C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 068F _ 8B. 45, 08
        add     edx, eax                                ; 0692 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0694 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0698 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 069A _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 069E _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 06A2 _ 0F 8E, FFFFFE8A
        leave                                           ; 06A8 _ C9
        ret                                             ; 06A9 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 06AA _ 55
        mov     ebp, esp                                ; 06AB _ 89. E5
        sub     esp, 20                                 ; 06AD _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 06B0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 06B3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 06B6 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 06BD _ E9, 000000B1

?_020:  mov     dword [ebp-8H], 0                       ; 06C2 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 06C9 _ E9, 00000097

?_021:  mov     eax, dword [ebp-4H]                     ; 06CE _ 8B. 45, FC
        shl     eax, 4                                  ; 06D1 _ C1. E0, 04
        mov     edx, eax                                ; 06D4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06D6 _ 8B. 45, F8
        add     eax, edx                                ; 06D9 _ 01. D0
        add     eax, cursor.1521                        ; 06DB _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 06E0 _ 0F B6. 00
        cmp     al, 42                                  ; 06E3 _ 3C, 2A
        jnz     ?_022                                   ; 06E5 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 06E7 _ 8B. 45, FC
        shl     eax, 4                                  ; 06EA _ C1. E0, 04
        mov     edx, eax                                ; 06ED _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06EF _ 8B. 45, F8
        add     eax, edx                                ; 06F2 _ 01. D0
        mov     edx, eax                                ; 06F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06F6 _ 8B. 45, 08
        add     eax, edx                                ; 06F9 _ 01. D0
        mov     byte [eax], 0                           ; 06FB _ C6. 00, 00
?_022:  mov     eax, dword [ebp-4H]                     ; 06FE _ 8B. 45, FC
        shl     eax, 4                                  ; 0701 _ C1. E0, 04
        mov     edx, eax                                ; 0704 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0706 _ 8B. 45, F8
        add     eax, edx                                ; 0709 _ 01. D0
        add     eax, cursor.1521                        ; 070B _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0710 _ 0F B6. 00
        cmp     al, 79                                  ; 0713 _ 3C, 4F
        jnz     ?_023                                   ; 0715 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0717 _ 8B. 45, FC
        shl     eax, 4                                  ; 071A _ C1. E0, 04
        mov     edx, eax                                ; 071D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 071F _ 8B. 45, F8
        add     eax, edx                                ; 0722 _ 01. D0
        mov     edx, eax                                ; 0724 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0726 _ 8B. 45, 08
        add     eax, edx                                ; 0729 _ 01. D0
        mov     byte [eax], 7                           ; 072B _ C6. 00, 07
?_023:  mov     eax, dword [ebp-4H]                     ; 072E _ 8B. 45, FC
        shl     eax, 4                                  ; 0731 _ C1. E0, 04
        mov     edx, eax                                ; 0734 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0736 _ 8B. 45, F8
        add     eax, edx                                ; 0739 _ 01. D0
        add     eax, cursor.1521                        ; 073B _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0740 _ 0F B6. 00
        cmp     al, 46                                  ; 0743 _ 3C, 2E
        jnz     ?_024                                   ; 0745 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0747 _ 8B. 45, FC
        shl     eax, 4                                  ; 074A _ C1. E0, 04
        mov     edx, eax                                ; 074D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 074F _ 8B. 45, F8
        add     eax, edx                                ; 0752 _ 01. D0
        mov     edx, eax                                ; 0754 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0756 _ 8B. 45, 08
        add     edx, eax                                ; 0759 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 075B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 075F _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 0761 _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 15                      ; 0765 _ 83. 7D, F8, 0F
        jle     ?_021                                   ; 0769 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 076F _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0773 _ 83. 7D, FC, 0F
        jle     ?_020                                   ; 0777 _ 0F 8E, FFFFFF45
        leave                                           ; 077D _ C9
        ret                                             ; 077E _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 077F _ 55
        mov     ebp, esp                                ; 0780 _ 89. E5
        sub     esp, 16                                 ; 0782 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0785 _ C7. 45, FC, 00000000
        jmp     ?_030                                   ; 078C _ EB, 50

?_027:  mov     dword [ebp-8H], 0                       ; 078E _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 0795 _ EB, 3B

?_028:  mov     edx, dword [ebp+1CH]                    ; 0797 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 079A _ 8B. 45, FC
        add     eax, edx                                ; 079D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 079F _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 07A3 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 07A6 _ 8B. 55, F8
        add     edx, ecx                                ; 07A9 _ 01. CA
        add     eax, edx                                ; 07AB _ 01. D0
        mov     edx, eax                                ; 07AD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07AF _ 8B. 45, 08
        add     edx, eax                                ; 07B2 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 07B4 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 07B7 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 07BB _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 07BD _ 8B. 45, F8
        add     eax, ecx                                ; 07C0 _ 01. C8
        mov     ecx, eax                                ; 07C2 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 07C4 _ 8B. 45, 20
        add     eax, ecx                                ; 07C7 _ 01. C8
        movzx   eax, byte [eax]                         ; 07C9 _ 0F B6. 00
        mov     byte [edx], al                          ; 07CC _ 88. 02
        add     dword [ebp-8H], 1                       ; 07CE _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 07D2 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 07D5 _ 3B. 45, 10
        jl      ?_028                                   ; 07D8 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 07DA _ 83. 45, FC, 01
?_030:  mov     eax, dword [ebp-4H]                     ; 07DE _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 07E1 _ 3B. 45, 14
        jl      ?_027                                   ; 07E4 _ 7C, A8
        leave                                           ; 07E6 _ C9
        ret                                             ; 07E7 _ C3
; putblock End of function


fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1474:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0068 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

cursor.1521:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0080 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0088 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0098 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00E0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00F0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 0100 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 0110 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0128 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0138 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0148 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0158 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0168 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0178 _ .....***



mcursor:                                                ; byte
        resb    256                                     ; 0000



?_031:                                                  ; byte
        db 53H, 68H, 6FH, 77H, 20H, 63H, 75H, 72H       ; 0000 _ Show cur
        db 73H, 6FH, 72H, 20H, 62H, 65H, 6CH, 6FH       ; 0008 _ sor belo
        db 77H, 21H, 00H                                ; 0010 _ w!.


