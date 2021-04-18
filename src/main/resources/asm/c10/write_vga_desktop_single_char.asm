; Disassembly of file: write_vga_desktop.o
; Fri Sep 23 11:55:01 2016
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
        push    20                                      ; 0283 _ 6A, 14
        push    20                                      ; 0285 _ 6A, 14
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showFont8                               ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0295 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 029A _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 029C _ 55
        mov     ebp, esp                                ; 029D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 029F _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 02A2 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 02A8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02AB _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02B1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02B4 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 02BA _ 5D
        ret                                             ; 02BB _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 02BC _ 55
        mov     ebp, esp                                ; 02BD _ 89. E5
        sub     esp, 8                                  ; 02BF _ 83. EC, 08
        sub     esp, 4                                  ; 02C2 _ 83. EC, 04
        push    table_rgb.1442                          ; 02C5 _ 68, 00000020(d)
        push    15                                      ; 02CA _ 6A, 0F
        push    0                                       ; 02CC _ 6A, 00
        call    set_palette                             ; 02CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D3 _ 83. C4, 10
        nop                                             ; 02D6 _ 90
        leave                                           ; 02D7 _ C9
        ret                                             ; 02D8 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 02D9 _ 55
        mov     ebp, esp                                ; 02DA _ 89. E5
        sub     esp, 24                                 ; 02DC _ 83. EC, 18
        call    io_load_eflags                          ; 02DF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 02E4 _ 89. 45, F4
        call    io_cli                                  ; 02E7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 02EC _ 83. EC, 08
        push    dword [ebp+8H]                          ; 02EF _ FF. 75, 08
        push    968                                     ; 02F2 _ 68, 000003C8
        call    io_out8                                 ; 02F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FC _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 02FF _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0302 _ 89. 45, F0
        jmp     ?_003                                   ; 0305 _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 0307 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 030A _ 0F B6. 00
        shr     al, 2                                   ; 030D _ C0. E8, 02
        movzx   eax, al                                 ; 0310 _ 0F B6. C0
        sub     esp, 8                                  ; 0313 _ 83. EC, 08
        push    eax                                     ; 0316 _ 50
        push    969                                     ; 0317 _ 68, 000003C9
        call    io_out8                                 ; 031C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0321 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0324 _ 8B. 45, 10
        add     eax, 1                                  ; 0327 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 032A _ 0F B6. 00
        shr     al, 2                                   ; 032D _ C0. E8, 02
        movzx   eax, al                                 ; 0330 _ 0F B6. C0
        sub     esp, 8                                  ; 0333 _ 83. EC, 08
        push    eax                                     ; 0336 _ 50
        push    969                                     ; 0337 _ 68, 000003C9
        call    io_out8                                 ; 033C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0341 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0344 _ 8B. 45, 10
        add     eax, 2                                  ; 0347 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 034A _ 0F B6. 00
        shr     al, 2                                   ; 034D _ C0. E8, 02
        movzx   eax, al                                 ; 0350 _ 0F B6. C0
        sub     esp, 8                                  ; 0353 _ 83. EC, 08
        push    eax                                     ; 0356 _ 50
        push    969                                     ; 0357 _ 68, 000003C9
        call    io_out8                                 ; 035C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0361 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0364 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0368 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 036C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 036F _ 3B. 45, 0C
        jle     ?_002                                   ; 0372 _ 7E, 93
        sub     esp, 12                                 ; 0374 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0377 _ FF. 75, F4
        call    io_store_eflags                         ; 037A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037F _ 83. C4, 10
        nop                                             ; 0382 _ 90
        leave                                           ; 0383 _ C9
        ret                                             ; 0384 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0385 _ 55
        mov     ebp, esp                                ; 0386 _ 89. E5
        sub     esp, 20                                 ; 0388 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 038B _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 038E _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0391 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0394 _ 89. 45, FC
        jmp     ?_007                                   ; 0397 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 0399 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 039C _ 89. 45, F8
        jmp     ?_006                                   ; 039F _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 03A1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 03A4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03A8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 03AA _ 8B. 45, F8
        add     eax, edx                                ; 03AD _ 01. D0
        mov     edx, eax                                ; 03AF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03B1 _ 8B. 45, 08
        add     edx, eax                                ; 03B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03BA _ 88. 02
        add     dword [ebp-8H], 1                       ; 03BC _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 03C0 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 03C3 _ 3B. 45, 1C
        jle     ?_005                                   ; 03C6 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 03C8 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 03CC _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 03CF _ 3B. 45, 20
        jle     ?_004                                   ; 03D2 _ 7E, C5
        leave                                           ; 03D4 _ C9
        ret                                             ; 03D5 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 03D6 _ 55
        mov     ebp, esp                                ; 03D7 _ 89. E5
        sub     esp, 20                                 ; 03D9 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 03DC _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 03DF _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 03E2 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 03E9 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 03EE _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 03F1 _ 8B. 45, 1C
        add     eax, edx                                ; 03F4 _ 01. D0
        movzx   eax, byte [eax]                         ; 03F6 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 03F9 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 03FC _ 80. 7D, FB, 00
        jns     ?_009                                   ; 0400 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0402 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0405 _ 8B. 45, FC
        add     eax, edx                                ; 0408 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 040A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 040E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0410 _ 8B. 45, 10
        add     eax, edx                                ; 0413 _ 01. D0
        mov     edx, eax                                ; 0415 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0417 _ 8B. 45, 08
        add     edx, eax                                ; 041A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 041C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0420 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0422 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0426 _ 83. E0, 40
        test    eax, eax                                ; 0429 _ 85. C0
        jz      ?_010                                   ; 042B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 042D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0430 _ 8B. 45, FC
        add     eax, edx                                ; 0433 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0435 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0439 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 043B _ 8B. 45, 10
        add     eax, edx                                ; 043E _ 01. D0
        lea     edx, [eax+1H]                           ; 0440 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0443 _ 8B. 45, 08
        add     edx, eax                                ; 0446 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0448 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 044C _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 044E _ 0F BE. 45, FB
        and     eax, 20H                                ; 0452 _ 83. E0, 20
        test    eax, eax                                ; 0455 _ 85. C0
        jz      ?_011                                   ; 0457 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0459 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 045C _ 8B. 45, FC
        add     eax, edx                                ; 045F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0461 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0465 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0467 _ 8B. 45, 10
        add     eax, edx                                ; 046A _ 01. D0
        lea     edx, [eax+2H]                           ; 046C _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 046F _ 8B. 45, 08
        add     edx, eax                                ; 0472 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0474 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0478 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 047A _ 0F BE. 45, FB
        and     eax, 10H                                ; 047E _ 83. E0, 10
        test    eax, eax                                ; 0481 _ 85. C0
        jz      ?_012                                   ; 0483 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0485 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0488 _ 8B. 45, FC
        add     eax, edx                                ; 048B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 048D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0491 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0493 _ 8B. 45, 10
        add     eax, edx                                ; 0496 _ 01. D0
        lea     edx, [eax+3H]                           ; 0498 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 049B _ 8B. 45, 08
        add     edx, eax                                ; 049E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04A4 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 04A6 _ 0F BE. 45, FB
        and     eax, 08H                                ; 04AA _ 83. E0, 08
        test    eax, eax                                ; 04AD _ 85. C0
        jz      ?_013                                   ; 04AF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04B1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04B4 _ 8B. 45, FC
        add     eax, edx                                ; 04B7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04B9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04BD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04BF _ 8B. 45, 10
        add     eax, edx                                ; 04C2 _ 01. D0
        lea     edx, [eax+4H]                           ; 04C4 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 04C7 _ 8B. 45, 08
        add     edx, eax                                ; 04CA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04CC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04D0 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04D2 _ 0F BE. 45, FB
        and     eax, 04H                                ; 04D6 _ 83. E0, 04
        test    eax, eax                                ; 04D9 _ 85. C0
        jz      ?_014                                   ; 04DB _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04DD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04E0 _ 8B. 45, FC
        add     eax, edx                                ; 04E3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04E5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04E9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04EB _ 8B. 45, 10
        add     eax, edx                                ; 04EE _ 01. D0
        lea     edx, [eax+5H]                           ; 04F0 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 04F3 _ 8B. 45, 08
        add     edx, eax                                ; 04F6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04F8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FC _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 04FE _ 0F BE. 45, FB
        and     eax, 02H                                ; 0502 _ 83. E0, 02
        test    eax, eax                                ; 0505 _ 85. C0
        jz      ?_015                                   ; 0507 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0509 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 050C _ 8B. 45, FC
        add     eax, edx                                ; 050F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0511 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0515 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0517 _ 8B. 45, 10
        add     eax, edx                                ; 051A _ 01. D0
        lea     edx, [eax+6H]                           ; 051C _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 051F _ 8B. 45, 08
        add     edx, eax                                ; 0522 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0524 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0528 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 052A _ 0F BE. 45, FB
        and     eax, 01H                                ; 052E _ 83. E0, 01
        test    eax, eax                                ; 0531 _ 85. C0
        jz      ?_016                                   ; 0533 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0535 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0538 _ 8B. 45, FC
        add     eax, edx                                ; 053B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 053D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0541 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0543 _ 8B. 45, 10
        add     eax, edx                                ; 0546 _ 01. D0
        lea     edx, [eax+7H]                           ; 0548 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 054B _ 8B. 45, 08
        add     edx, eax                                ; 054E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0550 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0554 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 0556 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 055A _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 055E _ 0F 8E, FFFFFE8A
        leave                                           ; 0564 _ C9
        ret                                             ; 0565 _ C3
; showFont8 End of function


fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1442:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........


