.segment "BANK_16"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x02C010-0x03000F
.org $8000



.export sub_0x02C0DE
.export sub_0x02E6E6
.export sub_0x02E74B
.export ofs_0x02E7CA
.export ofs_0x02E86E
.export sub_0x02EA10_автобаланс_сил_в_vs_team
.export sub_0x02EE60_выбрать_палитру_уровня
.export sub_0x02EF50_записать_3_цвета_в_буфер
.export sub_0x02EFA0
.export ofs_0x02F73B_суперка_casey_песок
.export loc_0x02FC90
.export sub_0x02FD40_отрисовать_колво_побед_в_матчах
.export sub_0x02FEE4
.export loc_0x02FF80
.export sub_0x025E5F_обработка_состояния_мяча
.export sub_0x0268BB_обработчик_состояния_летящего_сплинтера



- D 0 - - - 0x02C010 0B:8000: 06        .byte con_bank_id + $16   ; 



sub_0x02C0DE:
C - - - - - 0x02C0DE 0B:80CE: 20 D4 80  JSR sub_80D4
C - - - - - 0x02C0E1 0B:80D1: 4C D4 82  JMP loc_82D4



sub_80D4:
C - - - - - 0x02C0E4 0B:80D4: AD 3E 06  LDA ram_063E
C - - - - - 0x02C0E7 0B:80D7: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x02C0EA 0B:80DA: E4 80     .word ofs_041_80E4_00
- D 0 - I - 0x02C0EC 0B:80DC: 06 81     .word ofs_041_8106_01_отрисовать_экран_player_select
- D 0 - I - 0x02C0EE 0B:80DE: 58 81     .word ofs_041_8158_02
- D 0 - I - 0x02C0F0 0B:80E0: 5B 81     .word ofs_041_815B_03
- D 0 - I - 0x02C0F2 0B:80E2: 3C 83     .word ofs_041_833C_04



ofs_041_80E4_00:
C - - J - - 0x02C0F4 0B:80E4: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
C - - - - - 0x02C0F7 0B:80E7: EE 3E 06  INC ram_063E
C - - - - - 0x02C0FA 0B:80EA: A9 74     LDA #con_chr_bank_bg + $74
C - - - - - 0x02C0FC 0B:80EC: 85 32     STA ram_chr_bank_bg
C - - - - - 0x02C0FE 0B:80EE: 20 00 AC  JSR sub_AC00
C - - - - - 0x02C102 0B:80F2: A0 02     LDY #con_chr_pair_02
C - - - - - 0x02C104 0B:80F4: 20 04 DC  JSR sub_0x03DC14_запись_1й_пары_chr_spr
C - - - - - 0x02C107 0B:80F7: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C109 0B:80F9: F0 03     BEQ bra_80FE    ; if con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C10B 0B:80FB: EE E0 04  INC ram_04E0_obj
bra_80FE:
C - - - - - 0x02C10E 0B:80FE: A9 0A     LDA #con_0048_0A
C - - - - - 0x02C110 0B:8100: 20 14 F8  JSR sub_0x03F824_подготовить_irq_handler
C - - - - - 0x02C113 0B:8103: 4C 6D D4  JMP loc_0x03D47D_запись_черной_палитры_в_буфер



ofs_041_8106_01_отрисовать_экран_player_select:
C - - J - - 0x02C116 0B:8106: EE 3E 06  INC ram_063E
C - - - - - 0x02C119 0B:8109: A4 2C     LDY ram_game_mode
                                        BNE bra_812C
; Y = 00
                                        LDA ram_флаг_всех_персов_в_story
                                        BEQ bra_812C
                                        INY ; 01
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
bra_812C:
C - - - - - 0x02C11B 0B:810B: BE FA BF  LDX tbl_BFFA,Y
C - - - - - 0x02C11E 0B:810E: 20 44 F0  JSR sub_0x03F054_отрисовать_экран
                                        LDX ram_game_mode
C - - - - - 0x02C12B 0B:811B: A0 06     LDY tbl_B3EA_выбор_палитры_фона,X
C - - - - - 0x02C12D 0B:811D: A9 13     LDA #con_D57A_13
C - - - - - 0x02C12F 0B:811F: 20 94 D3  JSR sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x02C132 0B:8122: A0 00     LDY #$00
C - - - - - 0x02C134 0B:8124: 8C 30 05  STY ram_0530_obj_state
C - - - - - 0x02C137 0B:8127: 8C 31 05  STY ram_0530_obj_state + $01
C - - - - - 0x02C13A 0B:812A: C8        INY ; 01
C - - - - - 0x02C13B 0B:812B: 84 08     STY ram_0008
bra_812D_loop:
C - - - - - 0x02C13D 0B:812D: A6 08     LDX ram_0008
C - - - - - 0x02C13F 0B:812F: 20 4F 81  JSR sub_814F
C - - - - - 0x02C142 0B:8132: C6 08     DEC ram_0008
C - - - - - 0x02C144 0B:8134: 10 F7     BPL bra_812D_loop
C - - - - - 0x02C146 0B:8136: A9 37     LDA #con_music_player_select
C - - - - - 0x02C148 0B:8138: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x02C14B 0B:813B: A2 00     LDX #$00
C - - - - - 0x02C14D 0B:813D: 20 2F 82  JSR sub_822F
C - - - - - 0x02C150 0B:8140: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C152 0B:8142: F0 08     BEQ bra_814C    ; if con_gm_story
C - - - - - 0x02C154 0B:8144: C9 02     CMP #$02
C - - - - - 0x02C156 0B:8146: F0 04     BEQ bra_814C    ; if con_gm_vs_cpu
C - - - - - 0x02C158 0B:8148: E8        INX ; 01
C - - - - - 0x02C159 0B:8149: 20 2F 82  JSR sub_822F
bra_814C:
C - - - - - 0x02C15C 0B:814C: 4C 41 E1  JMP loc_0x03E151_подготовить_осветление_из_черного_в_цветной



sub_814F:
C - - - - - 0x02C15F 0B:814F: B4 A2     LDY ram_plr_id,X
C - - - - - 0x02C161 0B:8151: B9 8C E9  LDA tbl_0x03E99C_индекс_3х_цветов_для_перса,Y
C - - - - - 0x02C164 0B:8154: E8        INX
; tip_индекс_буфера_палитры + $01
; tip_индекс_буфера_палитры + $02
C - - - - - 0x02C165 0B:8155: 4C 46 D3  JMP loc_0x03D356_записать_3_цвета_в_буфер



ofs_041_8158_02:
C - - J - - 0x02C168 0B:8158: EE 3E 06  INC ram_063E
ofs_041_815B_03:
C - - - - - 0x02C16B 0B:815B: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C16D 0B:815D: C9 02     CMP #$02
C - - - - - 0x02C16F 0B:815F: F0 23     BEQ bra_8184_vs_cpu
; con_gm_story
; con_gm_vs_player
; con_gm_vs_team
C - - - - - 0x02C171 0B:8161: 4C 80 BD  JMP loc_BD80



loc_8164:
C D 0 - - - 0x02C174 0B:8164: 85 A8     STA ram_local_obj_index
bra_8166_loop:
C - - - - - 0x02C176 0B:8166: A6 A8     LDX ram_local_obj_index
C - - - - - 0x02C178 0B:8168: 8A        TXA
C - - - - - 0x02C179 0B:8169: 29 01     AND #$01
C - - - - - 0x02C17B 0B:816B: 09 80     ORA #$80
C - - - - - 0x02C17D 0B:816D: 9D 00 05  STA ram_0500_obj,X ; 0500 0501 
C - - - - - 0x02C180 0B:8170: 20 78 81  JSR sub_8178
C - - - - - 0x02C183 0B:8173: C6 A8     DEC ram_local_obj_index
C - - - - - 0x02C185 0B:8175: 10 EF     BPL bra_8166_loop
C - - - - - 0x02C187 0B:8177: 60        RTS



sub_8178:
C - - - - - 0x02C188 0B:8178: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x02C18B 0B:817B: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x02C18E 0B:817E: C9 81     .word ofs_040_81C9_00
- D 0 - I - 0x02C190 0B:8180: 93 82     .word ofs_040_8293_01
- D 0 - I - 0x02C192 0B:8182: BC 82     .word ofs_040_82BC_02



bra_8184_vs_cpu:
loc_8184:
C D 0 - - - 0x02C194 0B:8184: 18        CLC
C - - - - - 0x02C195 0B:8185: AD 30 05  LDA ram_0530_obj_state
C - - - - - 0x02C198 0B:8188: 6D 31 05  ADC ram_0530_obj_state + $01
C - - - - - 0x02C19B 0B:818B: 8D 30 05  STA ram_0530_obj_state
C - - - - - 0x02C19E 0B:818E: A9 00     LDA #$00
C - - - - - 0x02C1A0 0B:8190: 8D 31 05  STA ram_0530_obj_state + $01
C - - - - - 0x02C1A3 0B:8193: A2 81     LDX #$81
C - - - - - 0x02C1A5 0B:8195: 8E 01 05  STX ram_0500_obj + $01
C - - - - - 0x02C1A8 0B:8198: CA        DEX ; 80
C - - - - - 0x02C1A9 0B:8199: 8E 00 05  STX ram_0500_obj
C - - - - - 0x02C1AC 0B:819C: AD 30 05  LDA ram_0530_obj_state
C - - - - - 0x02C1AF 0B:819F: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x02C1B2 0B:81A2: C5 81     .word ofs_039_81C5_00
- D 0 - I - 0x02C1B4 0B:81A4: 91 82     .word ofs_039_8291_01
- D 0 - I - 0x02C1B6 0B:81A6: AE 81     .word ofs_039_81AE_02
- D 0 - I - 0x02C1B8 0B:81A8: B6 81     .word ofs_039_81B6_03
- D 0 - I - 0x02C1BA 0B:81AA: 8D 82     .word ofs_039_828D_04
- D 0 - I - 0x02C1BC 0B:81AC: CC 82     .word ofs_039_82CC_05



ofs_039_81AE_02:
C - - J - - 0x02C1BE 0B:81AE: EE 30 05  INC ram_0530_obj_state
C - - - - - 0x02C1C1 0B:81B1: A2 01     LDX #$01
C - - - - - 0x02C1C3 0B:81B3: 4C 2F 82  JMP loc_822F



ofs_039_81B6_03:
C - - J - - 0x02C1C6 0B:81B6: A2 01     LDX #$01
C - - - - - 0x02C1C8 0B:81B8: 86 A8     STX ram_local_obj_index
C - - - - - 0x02C1CA 0B:81BA: A5 8E     LDA ram_btn_press
C - - - - - 0x02C1CC 0B:81BC: 20 CB 81  JSR sub_81CB
C - - - - - 0x02C1CF 0B:81BF: A9 1A     LDA #$1A
C - - - - - 0x02C1D1 0B:81C1: 8D 01 04  STA ram_obj_anim_id + $01
bra_81C4_RTS:
C - - - - - 0x02C1D4 0B:81C4: 60        RTS



ofs_039_81C5_00:
C - - J - - 0x02C1D5 0B:81C5: A2 00     LDX #$00
C - - - - - 0x02C1D7 0B:81C7: 86 A8     STX ram_local_obj_index
ofs_040_81C9_00:
C - - J - - 0x02C1D9 0B:81C9: B5 8E     LDA ram_btn_press,X
sub_81CB:
C - - - - - 0x02C1DB 0B:81CB: A8        TAY
C - - - - - 0x02C1DC 0B:81CC: 29 D0     AND #con_btns_AB + con_btn_Start
C - - - - - 0x02C1DE 0B:81CE: F0 03     BEQ bra_81D3
C - - - - - 0x02C1E0 0B:81D0: 4C 12 BE  JMP loc_BE12
bra_81D3:
C - - - - - 0x02C1E3 0B:81D3: 98        TYA
C - - - - - 0x02C1E4 0B:81D4: 29 0F     AND #con_btns_Dpad
C - - - - - 0x02C1E6 0B:81D6: F0 EC     BEQ bra_81C4_RTS
C - - - - - 0x02C1E8 0B:81D8: A0 FF     LDY #$FF
C - - - - - 0x02C1EA 0B:81DA: 29 09     AND #con_btn_Up + con_btn_Right
C - - - - - 0x02C1EC 0B:81DC: F0 02     BEQ bra_81E0
C - - - - - 0x02C1EE 0B:81DE: A0 01     LDY #$01
bra_81E0:
C - - - - - 0x02C1F0 0B:81E0: 84 00     TYA
C - - - - - 0x02C1F4 0B:81E4: 18        CLC
C - - - - - 0x02C1F5 0B:81E5: 75 A2     ADC ram_plr_id,X
                                        PHA
C - - - - - 0x02EA9C 0B:AA8C: AC E0 04  LDY ram_04E0_obj
                                        LDA ram_флаг_всех_персов_в_story
                                        BEQ bra_81F4
                                        LDY #$01
bra_81F4:
                                        PLA
C - - - - - 0x02C1FA 0B:81EA: D9 62 83  CMP tbl_8362_лимит_курсора,Y
C - - - - - 0x02C1FD 0B:81ED: 90 08     BCC bra_81F7
C - - - - - 0x02C1FF 0B:81EF: 10 04     BPL bra_81F5
C - - - - - 0x02C201 0B:81F1: B9 64 83  LDA tbl_8364_default_курсор_справа,Y
C - - - - - 0x02C204 0B:81F4: 2C        .byte $2C   ; BIT
bra_81F5:
C - - - - - 0x02C205 0B:81F5: A9 00     LDA #$00
bra_81F7:
C - - - - - 0x02C207 0B:81F7: 95 A2     STA ram_plr_id,X
C - - - - - 0x02C1F7 0B:81E7: 20 50 AA  JSR sub_AA50_автобаланс_сил_в_vs_player
C - - - - - 0x02C228 0B:8218: 20 7F 82  JSR sub_827F
C - - - - - 0x02C22B 0B:821B: B0 03     BCS bra_8220
C - - - - - 0x02C22D 0B:821D: 20 4F 81  JSR sub_814F
bra_8220:
C - - - - - 0x02C230 0B:8220: A6 A8     LDX ram_local_obj_index
C - - - - - 0x02C232 0B:8222: A9 00     LDA #$00
C - - - - - 0x02C234 0B:8224: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02C237 0B:8227: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x02C23A 0B:822A: A9 25     LDA #con_075C_25
C - - - - - 0x02C23C 0B:822C: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
sub_822F:
loc_822F:
; позиция курсора при выборе перса
C D 0 - - - 0x02C23F 0B:822F: B4 A2     LDY ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x02C241 0B:8231: B9 50 83  LDA tbl_8350_pos_X_курсор,Y
C - - - - - 0x02C244 0B:8234: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x02C247 0B:8237: B9 57 83  LDA tbl_8357_pos_Y_курсор,Y
C - - - - - 0x02C24A 0B:823A: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02C24D 0B:823D: 20 AB 82  JSR sub_82AB
C - - - - - 0x02C250 0B:8240: B4 A2     LDY ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x02C252 0B:8242: B9 49 83  LDA tbl_8349_pos_X_спрайты_портрета,Y
C - - - - - 0x02C255 0B:8245: 9D 42 04  STA ram_obj_pos_X_lo + $02,X ; 0442 0443 
C - - - - - 0x02C258 0B:8248: B9 42 83  LDA tbl_8342_pos_Y_спрайты_портрета,Y
C - - - - - 0x02C25B 0B:824B: 9D 12 04  STA ram_obj_pos_Y_lo + $02,X ; 0412 0413 
; запись индекса анимации портрета на экране выбора перса
C - - - - - 0x02C25E 0B:824E: 98        LDA tbl_0x03E32D_индекс_анимации_портрета,Y
C - - - - - 0x02C262 0B:8252: 9D 02 04  STA ram_obj_anim_id + $02,X ; 0402 0403 
C - - - - - 0x02C265 0B:8255: 8A        TXA
C - - - - - 0x02C266 0B:8256: 09 82     ORA #$82
C - - - - - 0x02C268 0B:8258: 9D 02 05  STA ram_0500_obj + $02,X ; 0502 0503 
C - - - - - 0x02C26B 0B:825B: 20 7F 82  JSR sub_827F
C - - - - - 0x02C26E 0B:825E: B0 0E     BCS bra_826E_RTS
C - - - - - 0x02C270 0B:8260: 8A        TXA
C - - - - - 0x02C271 0B:8261: 48        PHA
C - - - - - 0x02C272 0B:8262: 18        CLC
C - - - - - 0x02C273 0B:8263: 69 06     ADC #$06
C - - - - - 0x02C275 0B:8265: AA        TAX
C - - - - - 0x02C276 0B:8266: B9 85 E9  LDA tbl_0x03E995_индекс_3х_цветов_для_перса,Y
; tip_индекс_буфера_палитры + $06
; tip_индекс_буфера_палитры + $07
C - - - - - 0x02C279 0B:8269: 20 46 D3  JSR sub_0x03D356_записать_3_цвета_в_буфер
C - - - - - 0x02C27C 0B:826C: 68        PLA
C - - - - - 0x02C27D 0B:826D: AA        TAX
bra_826E_RTS:
C - - - - - 0x02C27E 0B:826E: 60        RTS



loc_826F:
C D 0 - - - 0x02C27F 0B:826F: FE 30 05  INC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x02C282 0B:8272: A9 3C     LDA #$3C
C - - - - - 0x02C284 0B:8274: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02C287 0B:8277: B4 A2     LDY ram_plr_id,X
C - - - - - 0x02C289 0B:8279: B9 5E E1  LDA tbl_0x03E16E_звук_выбора_перса,Y
C - - - - - 0x02C28C 0B:827C: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



sub_827F:
; con_новые_персы ?
C - - - - - 0x02C28F 0B:827F: E0 01     CPX #$01
C - - - - - 0x02C291 0B:8281: D0 06     BNE bra_8289
C - - - - - 0x02C293 0B:8283: A5 A2     LDA ram_plr_id
C - - - - - 0x02C295 0B:8285: C5 A3     CMP ram_plr_id + $01
C - - - - - 0x02C297 0B:8287: F0 02     BEQ bra_828B
bra_8289:
C - - - - - 0x02C299 0B:8289: 18        CLC
C - - - - - 0x02C29A 0B:828A: 60        RTS
bra_828B:
C - - - - - 0x02C29B 0B:828B: 18        CLC
C - - - - - 0x02C29C 0B:828C: 60        RTS



ofs_039_828D_04:
C - - J - - 0x02C29D 0B:828D: A2 01     LDX #$01
C - - - - - 0x02C29F 0B:828F: D0 02     BNE bra_8293    ; jmp



ofs_039_8291_01:
C - - J - - 0x02C2A1 0B:8291: A2 00     LDX #$00
bra_8293:
ofs_040_8293_01:
C - - J - - 0x02C2A3 0B:8293: 20 AB 82  JSR sub_82AB
C - - - - - 0x02C2A6 0B:8296: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02C2A9 0B:8299: 4A        LSR
C - - - - - 0x02C2AA 0B:829A: 4A        LSR
C - - - - - 0x02C2AB 0B:829B: 4A        LSR
C - - - - - 0x02C2AC 0B:829C: 90 05     BCC bra_82A3
C - - - - - 0x02C2AE 0B:829E: A9 00     LDA #$00
C - - - - - 0x02C2B0 0B:82A0: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
bra_82A3:
C - - - - - 0x02C2B3 0B:82A3: DE A0 04  DEC ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02C2B6 0B:82A6: D0 13     BNE bra_82BB_RTS
C - - - - - 0x02C2B8 0B:82A8: 20 4C BF  JSR sub_BF4C
sub_82AB:
C - - - - - 0x02C2BB 0B:82AB: 8A        TXA
C - - - - - 0x02C2BC 0B:82AC: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C2BE 0B:82AE: C0 02     CPY #$02
C - - - - - 0x02C2C0 0B:82B0: D0 02     BNE bra_82B4
; if con_gm_vs_cpu
C - - - - - 0x02C2C2 0B:82B2: 69 01     ADC #$01
bra_82B4:
C - - - - - 0x02C2C4 0B:82B4: A8        TAY
C - - - - - 0x02C2C5 0B:82B5: B9 66 83  LDA tbl_8366,Y
C - - - - - 0x02C2C8 0B:82B8: 4C 2C BF  JMP loc_BF2C
bra_82BB_RTS:
C - - - - - 0x02C2CB 0B:82BB: 60        RTS



ofs_040_82BC_02:
C - - J - - 0x02C2CC 0B:82BC: AD E0 04  LDA ram_04E0_obj
C - - - - - 0x02C2CF 0B:82BF: F0 0B     BEQ bra_82CC
C - - - - - 0x02C2D1 0B:82C1: 8A        TXA
C - - - - - 0x02C2D2 0B:82C2: 49 01     EOR #$01
C - - - - - 0x02C2D4 0B:82C4: A8        TAY
C - - - - - 0x02C2D5 0B:82C5: B9 30 05  LDA ram_0530_obj_state,Y ; 0530 0531 
C - - - - - 0x02C2D8 0B:82C8: C9 02     CMP #$02
C - - - - - 0x02C2DA 0B:82CA: 90 EF     BCC bra_82BB_RTS
bra_82CC:
ofs_039_82CC_05:
C - - - - - 0x02C2DC 0B:82CC: A9 04     LDA #$04
C - - - - - 0x02C2DE 0B:82CE: 8D 3E 06  STA ram_063E
C - - - - - 0x02C2E1 0B:82D1: 4C 2E E1  JMP loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный



loc_82D4:
C D 0 - - - 0x02C2E4 0B:82D4: A9 03     LDA #$03
C - - - - - 0x02C2E6 0B:82D6: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02C2E9 0B:82D9: A9 D0     LDA #< $23D0
C - - - - - 0x02C2EB 0B:82DB: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02C2EE 0B:82DE: A9 23     LDA #> $23D0
C - - - - - 0x02C2F0 0B:82E0: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02C2F3 0B:82E3: A9 1F     LDA #$1F
C - - - - - 0x02C2F5 0B:82E5: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02C2F8 0B:82E8: 20 59 D2  JSR sub_0x03D269_записать_FF_в_буфер_без_чтения_индекса
C - - - - - 0x02C2FB 0B:82EB: AE E0 04  LDX ram_04E0_obj
C - - - - - 0x02C2FE 0B:82EE: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02C300 0B:82F0: C9 02     CMP #$02
C - - - - - 0x02C302 0B:82F2: D0 08     BNE bra_82FC
; if con_gm_vs_cpu
C - - - - - 0x02C304 0B:82F4: AD 30 05  LDA ram_0530_obj_state
C - - - - - 0x02C307 0B:82F7: 4A        LSR
C - - - - - 0x02C308 0B:82F8: D0 02     BNE bra_82FC
C - - - - - 0x02C30A 0B:82FA: A2 00     LDX #$00
bra_82FC:
C - - - - - 0x02C30C 0B:82FC: 86 00     STX ram_0000
bra_82FE_loop:
C - - - - - 0x02C30E 0B:82FE: A6 00     LDX ram_0000
; запись атрибутов для добавления цветов роже на экране выбора персов
C - - - - - 0x02C310 0B:8300: B5 A2     LDA ram_plr_id,X ; 00A2 00A3 
                                        ASL
                                        TAY
                                        LDA tbl_832E_ppu,Y
                                        PHA ; 2006 hi
                                        LDA tbl_832E_ppu + $01,Y
C - - - - - 0x02C31C 0B:830C: 85 01     STA ram_0001
C - - - - - 0x02C31E 0B:830E: A8        TAY ; 2006 lo
                                        PLA ; 2006 hi
C - - - - - 0x02C321 0B:8311: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x02C324 0B:8314: A6 00     LDX ram_0000
C - - - - - 0x02C326 0B:8316: 20 30 83  JSR sub_8330
C - - - - - 0x02C329 0B:8319: 18        CLC
C - - - - - 0x02C32A 0B:831A: A5 01     LDA ram_0001
C - - - - - 0x02C32C 0B:831C: 69 08     ADC #< $2308
C - - - - - 0x02C32E 0B:831E: A8        TAY
C - - - - - 0x02C32F 0B:831F: A9 23     LDA #> $2308
C - - - - - 0x02C331 0B:8321: 20 6B D2  JSR sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x02C334 0B:8324: A6 00     LDX ram_0000
C - - - - - 0x02C336 0B:8326: E8        INX
C - - - - - 0x02C337 0B:8327: E8        INX
C - - - - - 0x02C338 0B:8328: 20 30 83  JSR sub_8330
C - - - - - 0x02C33B 0B:832B: C6 00     DEC ram_0000
C - - - - - 0x02C33D 0B:832D: 10 CF     BPL bra_82FE_loop
C - - - - - 0x02C33F 0B:832F: 60        RTS



tbl_832E_ppu:
                                        .dbyt $23D0 ; 00 con_fighter_leo
                                        .dbyt $23D2 ; 01 con_fighter_raph
                                        .dbyt $23D4 ; 02 con_fighter_mike
                                        .dbyt $23D6 ; 03 con_fighter_don
                                        .dbyt $23E1 ; 04 con_fighter_casey
                                        .dbyt $23E3 ; 05 con_fighter_hot
                                        .dbyt $23E5 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .dbyt $23D0 ; 07 con_fighter___leo
                                        .dbyt $23D2 ; 08 con_fighter___raph
                                        .dbyt $23D4 ; 09 con_fighter___mike
                                        .dbyt $23D6 ; 0A con_fighter___don
                                        .dbyt $23E1 ; 0B con_fighter___casey
                                        .dbyt $23E3 ; 0C con_fighter___hot
                                        .dbyt $23E5 ; 0D con_fighter___shred
                                    .endif



sub_8330:
C - - - - - 0x02C340 0B:8330: BD 5E 83  LDA tbl_835E,X
C - - - - - 0x02C343 0B:8333: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02C346 0B:8336: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02C349 0B:8339: 4C 5B D2  JMP loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса



ofs_041_833C_04:
C - - J - - 0x02C34C 0B:833C: A9 00     LDA #$00
C - - - - - 0x02C34E 0B:833E: 8D 3E 06  STA ram_063E
C - - - - - 0x02C351 0B:8341: 60        RTS



tbl_8342_pos_Y_спрайты_портрета:
- D 0 - - - 0x02C352 0B:8342: 4F        .byte $4F   ; 00 con_fighter_leo
- D 0 - - - 0x02C353 0B:8343: 4F        .byte $4F   ; 01 con_fighter_raph
- D 0 - - - 0x02C354 0B:8344: 4F        .byte $4F   ; 02 con_fighter_mike
- D 0 - - - 0x02C355 0B:8345: 4F        .byte $4F   ; 03 con_fighter_don
- D 0 - - - 0x02C356 0B:8346: 97        .byte $97   ; 04 con_fighter_casey
- D 0 - - - 0x02C357 0B:8347: 97        .byte $97   ; 05 con_fighter_hot
- D 0 - - - 0x02C358 0B:8348: 97        .byte $97   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $4F   ; 07 con_fighter___leo
                                        .byte $4F   ; 08 con_fighter___raph
                                        .byte $4F   ; 09 con_fighter___mike
                                        .byte $4F   ; 0A con_fighter___don
                                        .byte $97   ; 0B con_fighter___casey
                                        .byte $97   ; 0C con_fighter___hot
                                        .byte $97   ; 0D con_fighter___shred
                                    .endif

tbl_8349_pos_X_спрайты_портрета:
- D 0 - - - 0x02C359 0B:8349: 18        .byte $18   ; 00 con_fighter_leo
- D 0 - - - 0x02C35A 0B:834A: 50        .byte $50   ; 01 con_fighter_raph
- D 0 - - - 0x02C35B 0B:834B: 88        .byte $88   ; 02 con_fighter_mike
- D 0 - - - 0x02C35C 0B:834C: C0        .byte $C0   ; 03 con_fighter_don
- D 0 - - - 0x02C35D 0B:834D: 30        .byte $30   ; 04 con_fighter_casey
- D 0 - - - 0x02C35E 0B:834E: 70        .byte $70   ; 05 con_fighter_hot
- D 0 - - - 0x02C35F 0B:834F: B0        .byte $B0   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $18   ; 07 con_fighter___leo
                                        .byte $50   ; 08 con_fighter___raph
                                        .byte $88   ; 09 con_fighter___mike
                                        .byte $C0   ; 0A con_fighter___don
                                        .byte $30   ; 0B con_fighter___casey
                                        .byte $70   ; 0C con_fighter___hot
                                        .byte $B0   ; 0D con_fighter___shred
                                    .endif

tbl_8350_pos_X_курсор:
- D 0 - - - 0x02C360 0B:8350: 14        .byte $14   ; 00 con_fighter_leo
- D 0 - - - 0x02C361 0B:8351: 4C        .byte $4C   ; 01 con_fighter_raph
- D 0 - - - 0x02C362 0B:8352: 84        .byte $84   ; 02 con_fighter_mike
- D 0 - - - 0x02C363 0B:8353: BC        .byte $BC   ; 03 con_fighter_don
- D 0 - - - 0x02C364 0B:8354: 2C        .byte $2C   ; 04 con_fighter_casey
- D 0 - - - 0x02C365 0B:8355: 6C        .byte $6C   ; 05 con_fighter_hot
- D 0 - - - 0x02C366 0B:8356: AC        .byte $AC   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $14   ; 07 con_fighter___leo
                                        .byte $4C   ; 08 con_fighter___raph
                                        .byte $84   ; 09 con_fighter___mike
                                        .byte $BC   ; 0A con_fighter___don
                                        .byte $2C   ; 0B con_fighter___casey
                                        .byte $6C   ; 0C con_fighter___hot
                                        .byte $AC   ; 0D con_fighter___shred
                                    .endif

tbl_8357_pos_Y_курсор:
- D 0 - - - 0x02C367 0B:8357: 46        .byte $46   ; 00 con_fighter_leo
- D 0 - - - 0x02C368 0B:8358: 46        .byte $46   ; 01 con_fighter_raph
- D 0 - - - 0x02C369 0B:8359: 46        .byte $46   ; 02 con_fighter_mike
- D 0 - - - 0x02C36A 0B:835A: 46        .byte $46   ; 03 con_fighter_don
- D 0 - - - 0x02C36B 0B:835B: 8E        .byte $8E   ; 04 con_fighter_casey
- D 0 - - - 0x02C36C 0B:835C: 8E        .byte $8E   ; 05 con_fighter_hot
- D 0 - - - 0x02C36D 0B:835D: 8E        .byte $8E   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $46 - $08   ; 07 con_fighter___leo
                                        .byte $46 - $08   ; 08 con_fighter___raph
                                        .byte $46 - $08   ; 09 con_fighter___mike
                                        .byte $46 - $08   ; 0A con_fighter___don
                                        .byte $8E - $08   ; 0B con_fighter___casey
                                        .byte $8E - $08   ; 0C con_fighter___hot
                                        .byte $8E - $08   ; 0D con_fighter___shred
                                    .endif



tbl_835E:
- D 0 - - - 0x02C36E 0B:835E: 50        .byte $50   ; 00
- D 0 - - - 0x02C36F 0B:835F: A0        .byte $A0   ; 01
- D 0 - - - 0x02C370 0B:8360: 55        .byte $55   ; 02
- D 0 - - - 0x02C371 0B:8361: AA        .byte $AA   ; 03



tbl_8362_лимит_курсора:
; для проверки на overflow
- D 0 - - - 0x02C372 0B:8362: 04        .byte $04   ; 00 story
- D 0 - - - 0x02C373 0B:8363: 07        .byte con_колво_персов   ; 01 другие режимы

tbl_8364_default_курсор_справа:
; индекс перса, который будет записан при underflow
- D 0 - - - 0x02C374 0B:8364: 03        .byte $03   ; 00 story
- D 0 - - - 0x02C375 0B:8365: 06        .byte con_колво_персов - $01   ; 01 другие режимы



tbl_8366:
- D 0 - - - 0x02C376 0B:8366: 16        .byte $16   ; 00
- D 0 - - - 0x02C377 0B:8367: 17        .byte $17   ; 01
- D 0 - - - 0x02C378 0B:8368: 16        .byte $16   ; 02
- D 0 - - - 0x02C379 0B:8369: 1A        .byte $1A   ; 03



sub_A591:
C - - - - - 0x02E5A1 0B:A591: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02E5A3 0B:A593: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x02E5A6 0B:A596: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x02E5A9 0B:A599: A9 00     LDA #$00
C - - - - - 0x02E5AB 0B:A59B: 6A        ROR
C - - - - - 0x02E5AC 0B:A59C: 6A        ROR
C - - - - - 0x02E5AD 0B:A59D: DD 10 05  CMP ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02E5B0 0B:A5A0: 60        RTS



sub_0x02E6E6:
C D 1 - - - 0x02E6E6 0B:A6D6: 20 91 A5  JSR sub_A591
C - - - - - 0x02E6E9 0B:A6D9: D0 13     BNE bra_A6EE
C - - - - - 0x02E6EB 0B:A6DB: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x02E6EE 0B:A6DE: C9 B0     CMP #con_координата_пола
C - - - - - 0x02E6F0 0B:A6E0: 90 0C     BCC bra_A6EE
C - - - - - 0x02E6F2 0B:A6E2: B9 80 05  LDA ram_0580_obj,Y ; 0580 0581 
C - - - - - 0x02E6F5 0B:A6E5: D0 07     BNE bra_A6EE
C - - - - - 0x02E6F7 0B:A6E7: AC 38 06  LDY ram_расстояние_между_персами
C - - - - - 0x02E6FA 0B:A6EA: C0 10     CPY #$10
C - - - - - 0x02E6FC 0B:A6EC: 90 03     BCC bra_A6F1_слишком_близко
; if персы достаточно далеко друг от друга
bra_A6EE:
C - - - - - 0x02E6FE 0B:A6EE: A9 23     LDA #con_колво_персов * $05    ; для дешей рукой
C - - - - - 0x02E700 0B:A6F0: 18        CLC
bra_A6F1_слишком_близко:
C - - - - - 0x02E701 0B:A6F1: 7D 50 05  ADC ram_obj_id,X ; 0550 0551 
C - - - - - 0x02E704 0B:A6F4: 85 12     STA ram_0012
C - - - - - 0x02E706 0B:A6F6: 4C 17 F6  RTS



sub_0x02E74B:
- - - - - - 0x02E74B 0B:A73B: 05 AF     ORA ram_p1_score + $01
- - - - - - 0x02E74D 0B:A73D: 8D 0F 01  STA ram_010F
- - - - - - 0x02E750 0B:A740: A5 B0     LDA ram_p1_score + $02
- - - - - - 0x02E752 0B:A742: 20 02 D2  JSR sub_0x03D212_ASLx4
- - - - - - 0x02E755 0B:A745: 05 B1     ORA ram_p1_score + $03
- - - - - - 0x02E757 0B:A747: 8D 10 01  STA ram_0110
- - - - - - 0x02E75A 0B:A74A: 20 09 DE  JSR sub_0x03DE19_очистить_очки_обоих_игроков
- - - - - - 0x02E75D 0B:A74D: 4C 17 F6  JMP loc_0x03F627_restore_prg



ofs_0x02E7CA:
; бряк срабатывает после нанесения урона персу обычными ударами
; не суперкой, не мячом
C - - - - - 0x02E7CA 0B:A7BA: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x02E7CD 0B:A7BD: B9 E0 B5  LDA tbl_B5E0_lo,Y
C - - - - - 0x02E7D0 0B:A7C0: 85 00     STA ram_0000
C - - - - - 0x02E7D2 0B:A7C2: B9 E7 B5  LDA tbl_B5E7_hi,Y
C - - - - - 0x02E7D5 0B:A7C5: 85 01     STA ram_0001
C - - - - - 0x02E7D7 0B:A7C7: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02E7D9 0B:A7C9: B9 12 06  LDA ram_plr_индекс_атаки,Y ; 0612 0613 
C - - - - - 0x02E7DC 0B:A7CC: 0A        ASL
C - - - - - 0x02E7DD 0B:A7CD: A8        TAY
C - - - - - 0x02E7DE 0B:A7CE: BD C0 04  LDA ram_obj_hit_state,X ; 04C0 04C1 
C - - - - - 0x02E7E1 0B:A7D1: 4A        LSR
C - - - - - 0x02E7E2 0B:A7D2: B0 06     BCS bra_A7DA
C - - - - - 0x02E7E4 0B:A7D4: C8        INY
C - - - - - 0x02E7E5 0B:A7D5: A9 14     LDA #$14
C - - - - - 0x02E7E7 0B:A7D7: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
bra_A7DA:
C - - - - - 0x02E7EA 0B:A7DA: B1 00     LDA (ram_0000),Y
C - - - - - 0x02E7EC 0B:A7DC: 9D D0 04  STA ram_04D0_obj,X ; 04D0 04D1 
C - - - - - 0x02E7EF 0B:A7DF: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02E7F2 0B:A7E2: BD 00 06  LDA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x02E7F5 0B:A7E5: C0 11     CPY #$11
C - - - - - 0x02E7F7 0B:A7E7: D0 03     BNE bra_A7EC
C - - - - - 0x02E7F9 0B:A7E9: 09 10     ORA #$10
C - - - - - 0x02E7FB 0B:A7EB: 2C        .byte $2C   ; BIT
bra_A7EC:
C - - - - - 0x02E7FC 0B:A7EC: 29 EF     AND #$EF
C - - - - - 0x02E7FE 0B:A7EE: 9D 00 06  STA ram_0600_plr,X ; 0600 0601 
C - - - - - 0x02E801 0B:A7F1: 4C 17 F6  JMP loc_0x03F627_restore_prg



ofs_0x02E86E:
C - - - - - 0x02E86E 0B:A85E: B5 91     LDA ram_btn_hold,X
C - - - - - 0x02E870 0B:A860: 29 08     AND #con_btn_Up
C - - - - - 0x02E872 0B:A862: F0 1C     BEQ bra_A880
C - - - - - 0x02E874 0B:A864: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02E876 0B:A866: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x02E879 0B:A869: C9 03     CMP #con_plr_state_получает_урон
C - - - - - 0x02E87B 0B:A86B: D0 13     BNE bra_A880
C - - - - - 0x02E87D 0B:A86D: B9 C0 04  LDA ram_obj_hit_state,Y ; 04C1 
C - - - - - 0x02E880 0B:A870: C9 04     CMP #$04
C - - - - - 0x02E882 0B:A872: B0 0C     BCS bra_A880
C - - - - - 0x02E884 0B:A874: C9 02     CMP #$02
C - - - - - 0x02E886 0B:A876: F0 08     BEQ bra_A880
C - - - - - 0x02E888 0B:A878: BC 50 05  LDY ram_obj_id,X ; 0550 
C - - - - - 0x02E88B 0B:A87B: B9 9C A8  LDA tbl_A89C,Y
C - - - - - 0x02E88E 0B:A87E: D0 06     BNE bra_A886    ; jmp
bra_A880:
C - - - - - 0x02E890 0B:A880: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x02E893 0B:A883: B9 A6 A8  LDA tbl_A8A6,Y
bra_A886:
C - - - - - 0x02E896 0B:A886: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02E899 0B:A889: A9 86     LDA #> (ofs_0x024635 - $01)
C - - - - - 0x02E89B 0B:A88B: 48        PHA
C - - - - - 0x02E89C 0B:A88C: A9 24     LDA #< (ofs_0x024635 - $01)
C - - - - - 0x02E89E 0B:A88E: 48        PHA
C - - - - - 0x02E89F 0B:A88F: 4C 17 F6  JMP loc_0x03F627_restore_prg



tbl_A89C:
- D 1 - - - 0x02E8AC 0B:A89C: 04        .byte $04   ; 00 con_fighter_leo
- - - - - - 0x02E8AD 0B:A89D: 05        .byte $05   ; 01 con_fighter_raph
- - - - - - 0x02E8AE 0B:A89E: 04        .byte $04   ; 02 con_fighter_mike
- D 1 - - - 0x02E8AF 0B:A89F: 05        .byte $05   ; 03 con_fighter_don
- - - - - - 0x02E8B0 0B:A8A0: 05        .byte $05   ; 04 con_fighter_casey
- - - - - - 0x02E8B1 0B:A8A1: 09        .byte $09   ; 05 con_fighter_hot
- - - - - - 0x02E8B2 0B:A8A2: 06        .byte $06   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $04   ; 07 con_fighter___leo
                                        .byte $05   ; 08 con_fighter___raph
                                        .byte $04   ; 09 con_fighter___mike
                                        .byte $05   ; 0A con_fighter___don
                                        .byte $05   ; 0B con_fighter___casey
                                        .byte $09   ; 0C con_fighter___hot
                                        .byte $06   ; 0D con_fighter___shred
                                    .endif



tbl_A8A6:
- D 1 - - - 0x02E8B6 0B:A8A6: 05        .byte $05   ; 00 con_fighter_leo
- D 1 - - - 0x02E8B7 0B:A8A7: 06        .byte $06   ; 01 con_fighter_raph
- D 1 - - - 0x02E8B8 0B:A8A8: 05        .byte $05   ; 02 con_fighter_mike
- D 1 - - - 0x02E8B9 0B:A8A9: 06        .byte $06   ; 03 con_fighter_don
- D 1 - - - 0x02E8BA 0B:A8AA: 05        .byte $05   ; 04 con_fighter_casey
- D 1 - - - 0x02E8BB 0B:A8AB: 09        .byte $09   ; 05 con_fighter_hot
- D 1 - - - 0x02E8BC 0B:A8AC: 07        .byte $07   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $05   ; 07 con_fighter___leo
                                        .byte $06   ; 08 con_fighter___raph
                                        .byte $05   ; 09 con_fighter___mike
                                        .byte $06   ; 0A con_fighter___don
                                        .byte $05   ; 0B con_fighter___casey
                                        .byte $09   ; 0C con_fighter___hot
                                        .byte $07   ; 0D con_fighter___shred
                                    .endif



loc_AA1E_расчет_автобаланса_с_индексом:
sub_AA1E_расчет_автобаланса_с_индексом:
C - - - - - 0x02EA2A 0B:AA1A: 8A        TXA
C - - - - - 0x02EA2B 0B:AA1B: 49 01     EOR #$01
C - - - - - 0x02EA2D 0B:AA1D: A8        TAY
sub_AA1E_расчет_автобаланса:
; con_колво_персов
                                    .if con_новые_персы = $00
C - - - - - 0x02EA2E 0B:AA1E: B9 A2 00  LDA ram_plr_id,Y
C - - - - - 0x02EA31 0B:AA21: 0A        ASL
C - - - - - 0x02EA32 0B:AA22: 0A        ASL
C - - - - - 0x02EA33 0B:AA23: 0A        ASL
C - - - - - 0x02EA34 0B:AA24: 75 A2     ADC ram_plr_id,X
                                        SEC
                                        SBC ram_plr_id,Y
                                    .else
                                        LDA ram_plr_id,Y
                                        ASL
                                        ASL
                                        ASL
                                        ASL
                                        ADC ram_plr_id,X
                                        SEC
                                        SBC ram_plr_id,Y
                                        SBC ram_plr_id,Y
                                    .endif
C - - - - - 0x02EA36 0B:AA26: A8        TAY
C - - - - - 0x02EA37 0B:AA27: B9 90 AA  LDA tbl_AA90_автобаланс,Y
bra_AA2A:
C - - - - - 0x02EA3A 0B:AA2A: 95 A0     STA ram_strength,X
C - - - - - 0x02EA3C 0B:AA2C: A0 01     RTS



sub_0x02EA10_автобаланс_сил_в_vs_team:
C - - - - - 0x02EA16 0B:AA06: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x02EA18 0B:AA08: 49 03     EOR #$03
C - - - - - 0x02EA1A 0B:AA0A: D0 20     BNE bra_AA8C_RTS
; if con_gm_vs_team
C - - - - - 0x02EA1C 0B:AA0C: AD 51 01  LDA ram_tournament_индекс_игрока
C - - - - - 0x02EA1F 0B:AA0F: 49 01     EOR ram_tournament_индекс_игрока + $01
                                        ASL
                                        LDA #$00
C - - - - - 0x02EA21 0B:AA11: F0 17     BCS bra_AA2A
C - - - - - 0x02EA23 0B:AA13: AD 2B 01  LDA ram_option_misc
C - - - - - 0x02EA26 0B:AA16: 29 08     AND #$08
C - - - - - 0x02EA28 0B:AA18: F0 12     BEQ bra_AA8C_RTS
                                        JMP loc_AA1E_расчет_автобаланса_с_индексом



sub_AA50_автобаланс_сил_в_vs_player:
; свободный адрес 009D
C - - - - - 0x02EA61 0B:AA51: AD 2B 01  LDA ram_option_misc
C - - - - - 0x02EA64 0B:AA54: 29 08     AND #$08
C - - - - - 0x02EA69 0B:AA59: 90 31     BEQ bra_AA8C_RTS
C - - - - - 0x02EA6B 0B:AA5B: A4 27     LDA ram_позиция_курсора_в_главном_меню
C - - - - - 0x02EA6D 0B:AA5D: C0 01     CMP #$01
C - - - - - 0x02EA6F 0B:AA5F: D0 2B     BNE bra_AA8C_RTS
C - - - - - 0x02EA71 0B:AA61: 86 9C     TXA
                                        PHA
                                        JSR sub_AA1E_расчет_автобаланса_с_индексом
                                        TXA
                                        TAY
C - - - - - 0x02EA83 0B:AA73: 49 01     EOR #$01
C - - - - - 0x02EA85 0B:AA75: AA        TAX
                                        JSR sub_AA1E_расчет_автобаланса
C - - - - - 0x02EA9A 0B:AA8A: A6 9C     PLA
                                        TAX
bra_AA8C_RTS:
C - - - - - 0x02EA9F 0B:AA8F: 60        RTS



tbl_AA90_автобаланс:
                                    .if con_новые_персы = $00
;                                              +----------------------------------- 00 con_fighter_leo
;                                              |    +------------------------------ 01 con_fighter_raph
;                                              |    |    +------------------------- 02 con_fighter_mike
;                                              |    |    |    +-------------------- 03 con_fighter_don
;                                              |    |    |    |    +--------------- 04 con_fighter_casey
;                                              |    |    |    |    |    +---------- 05 con_fighter_hot
;                                              |    |    |    |    |    |    +----- 06 con_fighter_shred
;                                              |    |    |    |    |    |    |
;                                              |    |    |    |    |    |    |
- D 1 - - - 0x02EAA0 0B:AA90: 00        .byte $00, $00, $01, $00, $01, $FE, $FC   ; 00 con_fighter_leo
- D 1 - - - 0x02EAA8 0B:AA98: 00        .byte $01, $00, $01, $01, $02, $FE, $FD   ; 01 con_fighter_raph
- D 1 - - - 0x02EAB0 0B:AAA0: 00        .byte $00, $00, $00, $00, $00, $FC, $FC   ; 02 con_fighter_mike
- D 1 - - - 0x02EAB8 0B:AAA8: 00        .byte $00, $00, $01, $00, $01, $FD, $FC   ; 03 con_fighter_don
- D 1 - - - 0x02EAC0 0B:AAB0: 00        .byte $00, $00, $01, $00, $01, $FF, $FD   ; 04 con_fighter_casey
- D 1 - - - 0x02EAC8 0B:AAB8: 01        .byte $01, $01, $02, $02, $02, $FE, $FE   ; 05 con_fighter_hot
- D 1 - - - 0x02EAD0 0B:AAC0: 02        .byte $02, $02, $04, $03, $04, $01, $FE   ; 06 con_fighter_shred
                                    .else
;                                              +---------------------------------------------------------------------- 00 con_fighter_leo
;                                              |    +----------------------------------------------------------------- 01 con_fighter_raph
;                                              |    |    +------------------------------------------------------------ 02 con_fighter_mike
;                                              |    |    |    +------------------------------------------------------- 03 con_fighter_don
;                                              |    |    |    |    +-------------------------------------------------- 04 con_fighter_casey
;                                              |    |    |    |    |    +--------------------------------------------- 05 con_fighter_hot
;                                              |    |    |    |    |    |    +---------------------------------------- 06 con_fighter_shred
;                                              |    |    |    |    |    |    |    +----------------------------------- 07 con_fighter___leo
;                                              |    |    |    |    |    |    |    |    +------------------------------ 08 con_fighter___raph
;                                              |    |    |    |    |    |    |    |    |    +------------------------- 09 con_fighter___mike
;                                              |    |    |    |    |    |    |    |    |    |    +-------------------- 0A con_fighter___don
;                                              |    |    |    |    |    |    |    |    |    |    |    +--------------- 0B con_fighter___casey
;                                              |    |    |    |    |    |    |    |    |    |    |    |    +---------- 0C con_fighter___hot
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    +----- 0D con_fighter___shred
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
;                                              |    |    |    |    |    |    |    |    |    |    |    |    |    |
                                        .byte $00, $00, $01, $00, $01, $FE, $FC, $00, $00, $01, $00, $01, $FE, $FC   ; 00 con_fighter_leo
                                        .byte $01, $00, $01, $01, $02, $FE, $FD, $01, $00, $01, $01, $02, $FE, $FD   ; 01 con_fighter_raph
                                        .byte $00, $00, $00, $00, $00, $FC, $FC, $00, $00, $00, $00, $00, $FC, $FC   ; 02 con_fighter_mike
                                        .byte $00, $00, $01, $00, $01, $FD, $FC, $00, $00, $01, $00, $01, $FD, $FC   ; 03 con_fighter_don
                                        .byte $00, $00, $01, $00, $01, $FF, $FD, $00, $00, $01, $00, $01, $FF, $FD   ; 04 con_fighter_casey
                                        .byte $01, $01, $02, $02, $02, $FE, $FE, $01, $01, $02, $02, $02, $FE, $FE   ; 05 con_fighter_hot
                                        .byte $02, $02, $04, $03, $04, $01, $FE, $02, $02, $04, $03, $04, $01, $FE   ; 06 con_fighter_shred
                                        .byte $00, $00, $01, $00, $01, $FE, $FC, $00, $00, $01, $00, $01, $FE, $FC   ; 07 con_fighter___leo
                                        .byte $01, $00, $01, $01, $02, $FE, $FD, $01, $00, $01, $01, $02, $FE, $FD   ; 08 con_fighter___raph
                                        .byte $00, $00, $00, $00, $00, $FC, $FC, $00, $00, $00, $00, $00, $FC, $FC   ; 09 con_fighter___mike
                                        .byte $00, $00, $01, $00, $01, $FD, $FC, $00, $00, $01, $00, $01, $FD, $FC   ; 0A con_fighter___don
                                        .byte $00, $00, $01, $00, $01, $FF, $FD, $00, $00, $01, $00, $01, $FF, $FD   ; 0B con_fighter___casey
                                        .byte $01, $01, $02, $02, $02, $FE, $FE, $01, $01, $02, $02, $02, $FE, $FE   ; 0C con_fighter___hot
                                        .byte $02, $02, $04, $03, $04, $01, $FE, $02, $02, $04, $03, $04, $01, $FE   ; 0D con_fighter___shred
                                    .endif



tbl_ABFC:
- D 1 - - - 0x02EC0C 0B:ABFC: 58        .byte con_chr_bank_bg + $58   ; 00 story
- D 1 - - - 0x02EC0D 0B:ABFD: 58        .byte con_chr_bank_bg + $58   ; 01 vs player
- D 1 - - - 0x02EC0E 0B:ABFE: 58        .byte con_chr_bank_bg + $58   ; 02 vs cpu
- D 1 - - - 0x02EC0F 0B:ABFF: 76        .byte con_chr_bank_bg + $76   ; 03 vs team



sub_AC00:
C - - - - - 0x02EC10 0B:AC00: A4 2C     LDY ram_game_mode
C - - - - - 0x02EC12 0B:AC02: B9 FC AB  LDA tbl_ABFC,Y
C - - - - - 0x02EC15 0B:AC05: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x02EC17 0B:AC07: 60        RTS



tbl_ACB0_палитра_боя:
; green, original
- D 1 - - - 0x02ECC0 0B:ACB0: 00        .word off_AD00_00_leo
- D 1 - - - 0x02ECC1 0B:ACB1: 0C        .word off_AD0C_01_raph
- D 1 - - - 0x02ECC2 0B:ACB2: 00        .word off_AD00_02_mike
- D 1 - - - 0x02ECC3 0B:ACB3: 0C        .word off_AD0C_03_don
- D 1 - - - 0x02ECC4 0B:ACB4: 18        .word off_AD18_04_casey
- D 1 - - - 0x02ECC5 0B:ACB5: 18        .word off_AD18_05_hot
- D 1 - - - 0x02ECC6 0B:ACB6: 24        .word off_AD24_06_shred
- D 1 - - - 0x02ECC7 0B:ACB7: 30        .word off_AD30_07
; night
- - - - - - 0x02ECD0 0B:ACC0: 80        .word off_AD80_10_leo
- - - - - - 0x02ECD1 0B:ACC1: 8C        .word off_AD8C_11_raph
- - - - - - 0x02ECD2 0B:ACC2: 80        .word off_AD80_12_mike
- - - - - - 0x02ECD3 0B:ACC3: 8C        .word off_AD8C_13_don
- - - - - - 0x02ECD4 0B:ACC4: 98        .word off_AD98_14_casey
- - - - - - 0x02ECD5 0B:ACC5: 98        .word off_AD98_15_hot
- - - - - - 0x02ECD6 0B:ACC6: A4        .word off_ADA4_16_shred
- - - - - - 0x02ECD7 0B:ACC7: B0        .word off_ADB0_17



tbl_ACD0_фиксированная_палитра:
- D 1 - - - 0x02ECE0 0B:ACD0: 0F        .byte $0F, $16, $1A, $20   ; 
- D 1 - - - 0x02ECE4 0B:ACD4: 0F        .byte $0F, $0B, $2A, $12   ; 
- D 1 - - - 0x02ECE8 0B:ACD8: 0F        .byte $0F, $07, $16, $31   ; 
- D 1 - - - 0x02ECEC 0B:ACDC: 0F        .byte $0F, $04, $16, $37   ; 
- D 1 - - - 0x02ECF0 0B:ACE0: 0F        .byte $0F, $11, $21, $20   ; 



off_AD00_00_leo:
off_AD00_02_mike:
- D 1 - I - 0x02ED10 0B:AD00: 0F        .byte $0F, $17, $27, $38   ; 
- D 1 - I - 0x02ED14 0B:AD04: 0F        .byte $0F, $04, $14, $24   ; 
- D 1 - I - 0x02ED18 0B:AD08: 0F        .byte $0F, $06, $16, $26   ; 

off_AD0C_01_raph:
off_AD0C_03_don:
- D 1 - I - 0x02ED1C 0B:AD0C: 0F        .byte $0F, $00, $10, $20   ; 
- D 1 - I - 0x02ED20 0B:AD10: 0F        .byte $0F, $06, $16, $27   ; 
- D 1 - I - 0x02ED24 0B:AD14: 0F        .byte $0F, $08, $18, $28   ; 

off_AD18_04_casey:
off_AD18_05_hot:
- D 1 - I - 0x02ED28 0B:AD18: 0F        .byte $0F, $07, $17, $27   ; 
- D 1 - I - 0x02ED2C 0B:AD1C: 0F        .byte $0F, $06, $16, $26   ; 
- D 1 - I - 0x02ED30 0B:AD20: 0F        .byte $0F, $05, $07, $10   ; 

off_AD24_06_shred:
- D 1 - I - 0x02ED34 0B:AD24: 0F        .byte $0F, $0C, $1C, $21   ; 
- D 1 - I - 0x02ED38 0B:AD28: 0F        .byte $0F, $01, $11, $21   ; 
- D 1 - I - 0x02ED3C 0B:AD2C: 0F        .byte $0F, $03, $13, $23   ; 

off_AD30_07:
- D 1 - I - 0x02ED40 0B:AD30: 0F        .byte $0F, $20, $10, $00   ; 
- D 1 - I - 0x02ED44 0B:AD34: 0F        .byte $0F, $37, $27, $17   ; 
- D 1 - I - 0x02ED48 0B:AD38: 0F        .byte $0F, $06, $16, $26   ; 

off_AD80_10_leo:
off_AD80_12_mike:
- - - - - - 0x02ED90 0B:AD80: 0F        .byte $0F, $01, $11, $21   ; 
- - - - - - 0x02ED94 0B:AD84: 0F        .byte $0F, $03, $13, $23   ; 
- - - - - - 0x02ED98 0B:AD88: 0F        .byte $0F, $0C, $1C, $21   ; 

off_AD8C_11_raph:
off_AD8C_13_don:
- - - - - - 0x02ED9C 0B:AD8C: 0F        .byte $0F, $01, $11, $21   ; 
- - - - - - 0x02EDA0 0B:AD90: 0F        .byte $0F, $03, $13, $23   ; 
- - - - - - 0x02EDA4 0B:AD94: 0F        .byte $0F, $0C, $1C, $21   ; 

off_AD98_14_casey:
off_AD98_15_hot:
- - - - - - 0x02EDA8 0B:AD98: 0F        .byte $0F, $01, $11, $21   ; 
- - - - - - 0x02EDAC 0B:AD9C: 0F        .byte $0F, $0C, $1C, $21   ; 
- - - - - - 0x02EDB0 0B:ADA0: 0F        .byte $0F, $03, $02, $23   ; 

off_ADA4_16_shred:
- - - - - - 0x02EDB4 0B:ADA4: 0F        .byte $0F, $0C, $1C, $21   ; 
- - - - - - 0x02EDB8 0B:ADA8: 0F        .byte $0F, $01, $11, $21   ; 
- - - - - - 0x02EDBC 0B:ADAC: 0F        .byte $0F, $03, $13, $23   ; 

off_ADB0_17:
- - - - - - 0x02EDC0 0B:ADB0: 0F        .byte $0F, $20, $10, $00   ; 
- - - - - - 0x02EDC4 0B:ADB4: 0F        .byte $0F, $2C, $1C, $0C   ; 
- - - - - - 0x02EDC8 0B:ADB8: 0F        .byte $0F, $03, $13, $23   ; 



tbl_AE20_уровень_для_отрисовки:
- D 1 - - - 0x02EE30 0B:AE20: 0A        .byte con_screen_stage_sewer   ; 00 con_fighter_leo
- D 1 - - - 0x02EE31 0B:AE21: 14        .byte con_screen_stage_down_town   ; 01 con_fighter_raph
- D 1 - - - 0x02EE32 0B:AE22: 0A        .byte con_screen_stage_sewer   ; 02 con_fighter_mike
- D 1 - - - 0x02EE33 0B:AE23: 14        .byte con_screen_stage_down_town   ; 03 con_fighter_don
- D 1 - - - 0x02EE34 0B:AE24: 0E        .byte con_screen_stage_pirate_ship   ; 04 con_fighter_casey
- D 1 - - - 0x02EE35 0B:AE25: 0E        .byte con_screen_stage_pirate_ship   ; 05 con_fighter_hot
- D 1 - - - 0x02EE36 0B:AE26: 08        .byte con_screen_stage_water_front   ; 06 con_fighter_shred
- D 1 - - - 0x02EE37 0B:AE27: 3E        .byte con_screen_stage_technodrome   ; 07 



tbl_AE30:
- D 1 - - - 0x02EE40 0B:AE30: 68        .byte con_chr_bank_bg + $68, con_chr_bank_bg + $6A   ; 00 con_fighter_leo
- D 1 - - - 0x02EE42 0B:AE32: 64        .byte con_chr_bank_bg + $64, con_chr_bank_bg + $66   ; 01 con_fighter_raph
- D 1 - - - 0x02EE44 0B:AE34: 68        .byte con_chr_bank_bg + $68, con_chr_bank_bg + $6A   ; 02 con_fighter_mike
- D 1 - - - 0x02EE46 0B:AE36: 64        .byte con_chr_bank_bg + $64, con_chr_bank_bg + $66   ; 03 con_fighter_don
- D 1 - - - 0x02EE48 0B:AE38: 60        .byte con_chr_bank_bg + $60, con_chr_bank_bg + $62   ; 04 con_fighter_casey
- D 1 - - - 0x02EE4A 0B:AE3A: 60        .byte con_chr_bank_bg + $60, con_chr_bank_bg + $62   ; 05 con_fighter_hot
- D 1 - - - 0x02EE4C 0B:AE3C: 5C        .byte con_chr_bank_bg + $5C, con_chr_bank_bg + $5E   ; 06 con_fighter_shred
- D 1 - - - 0x02EE4E 0B:AE3E: 88        .byte con_chr_bank_bg + $88, con_chr_bank_bg + $8A   ; 07 



sub_0x02EE60_выбрать_палитру_уровня:
C - - - - - 0x02EE60 0B:AE50: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x02EE62 0B:AE52: 8D 5C 01  STA ram_tournament_индекс_игрока + $07
C - - - - - 0x02EE65 0B:AE55: EE 52 01  INC ram_0152
C - - - - - 0x02EE68 0B:AE58: 20 8C FC  JSR sub_0x03FC9C_set_mirroring_V
                                        LDA #$00
C - - - - - 0x02EE6B 0B:AE5B: 8D CA 06  STA ram_06CA_cpu_script
C - - - - - 0x02EE6E 0B:AE5E: 8D CB 06  STA ram_06CA_cpu_script + $01
C - - - - - 0x02EE71 0B:AE61: 8D 71 06  STA ram_0671
C - - - - - 0x02EE74 0B:AE64: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x02EE76 0B:AE66: 85 86     STA ram_0086
C - - - - - 0x02EE78 0B:AE68: 85 4D     STA ram_004D
; bzk optimize, предположительно ram_irq_handler будет перезаписан до чтения
C - - - - - 0x02EE7A 0B:AE6A: A9 01     LDA #con_0048_01
C - - - - - 0x02EE7C 0B:AE6C: 85 48     STA ram_irq_handler
                                        LDA #$01    ; enable irq
C - - - - - 0x02EE7E 0B:AE6E: 85 49     STA ram_irq_flag
C - - - - - 0x02EE80 0B:AE70: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x02EE82 0B:AE72: 0A        ASL
C - - - - - 0x02EE83 0B:AE73: A8        TAY
C - - - - - 0x02EE84 0B:AE74: A9 D0     LDA #< ofs_0x03F8E0
C - - - - - 0x02EE86 0B:AE76: 85 4B     STA ram_004B
C - - - - - 0x02EE88 0B:AE78: A9 F8     LDA #> ofs_0x03F8E0
C - - - - - 0x02EE8A 0B:AE7A: 85 4C     STA ram_004C
C - - - - - 0x02EE8C 0B:AE7C: B9 30 AE  LDA tbl_AE30,Y
C - - - - - 0x02EE8F 0B:AE7F: 85 4E     STA ram_alt_chr_bank_bg_1
C - - - - - 0x02EE91 0B:AE81: B9 31 AE  LDA tbl_AE30 + $01,Y
C - - - - - 0x02EE94 0B:AE84: 85 4F     STA ram_alt_chr_bank_bg_1 + $01
C - - - - - 0x02EE9A 0B:AE8A: AD 2B 01  LDA ram_option_misc
C - - - - - 0x02EE9D 0B:AE8D: 29 02     AND #$03
                                        TAX
                                        LDA tbl_AEC2_индекс,X
                                        CLC
C - - - - - 0x02EEA3 0B:AE93: 65 9E     ADC ram_номер_боя_story
                                        ASL
C - - - - - 0x02EEA5 0B:AE95: AA        TAX
C - - - - - 0x02EEA6 0B:AE96: BD B0 AC  LDA tbl_ACB0_палитра_боя,X
C - - - - - 0x02EEA9 0B:AE99: 85 00     STA ram_0000
                                        LDA tbl_ACB0_палитра_боя + $01,X
                                        STA ram_0001
C - - - - - 0x02EEAB 0B:AE9B: A0 0B     LDY #$0B
bra_AE9D_loop:
C - - - - - 0x02EEAD 0B:AE9D: B1 00     LDA (ram_0000),Y
C - - - - - 0x02EEAF 0B:AE9F: 99 4D 06  STA ram_pal_buffer,Y
C - - - - - 0x02EEB2 0B:AEA2: 88        DEY
C - - - - - 0x02EEB3 0B:AEA3: 10 F8     BPL bra_AE9D_loop
C - - - - - 0x02EEB5 0B:AEA5: A0 13     LDY #$13
bra_AEA7_loop:
C - - - - - 0x02EEB7 0B:AEA7: B9 D0 AC  LDA tbl_ACD0_фиксированная_палитра,Y
C - - - - - 0x02EEBA 0B:AEAA: 99 59 06  STA ram_pal_buffer + $0C,Y
C - - - - - 0x02EEBD 0B:AEAD: 88        DEY
C - - - - - 0x02EEBE 0B:AEAE: 10 F7     BPL bra_AEA7_loop
C - - - - - 0x02EEC0 0B:AEB0: 20 25 DC  JSR sub_0x03DC35_запись_пары_chr_bg_06
C - - - - - 0x02EEC3 0B:AEB3: 20 BE DA  JSR sub_0x03DACE_удалить_все_объекты
                                       ;LDA con_0095_раунд_начинается
C - - - - - 0x02EEC6 0B:AEB6: E6 95     INC ram_0095_стадия_игры    ; 05 -> 06
C - - - - - 0x02EEC8 0B:AEB8: A9 60     LDA #$60
C - - - - - 0x02EECA 0B:AEBA: 85 A6     STA ram_screen_pos_X
C - - - - - 0x02EECC 0B:AEBC: A4 9E     LDY ram_номер_боя_story
C - - - - - 0x02EECE 0B:AEBE: BE 20 AE  LDX tbl_AE20_уровень_для_отрисовки,Y
C - - - - - 0x02EED1 0B:AEC1: 60        RTS



tbl_AEC2_индекс:
                                        .byte $00 ; 00 green
                                        .byte $00 ; 01 original
                                        .byte $08 ; 02 night



tbl_AF3D_палитра:
- D 1 - - - 0x02EF4D 0B:AF3D: 21        .word tbl_B3EA_green   ; 00
- - - - - - 0x02EF4E 0B:AF3E: 23        .word tbl_B1EA_original   ; 01
- - - - - - 0x02EF4F 0B:AF3F: 25        .word tbl_AFEA_night   ; 02



sub_0x02EF50_записать_3_цвета_в_буфер:
C - - - - - 0x02EF50 0B:AF40: AD 2B 01  LDA ram_option_misc
C - - - - - 0x02EF53 0B:AF43: 29 07     AND #$03
                                        ASL
C - - - - - 0x02EF55 0B:AF45: A8        TAY
; загрузить базовый поинтер палитры
                                        LDA tbl_AF3D_палитра,Y
C - - - - - 0x02EF56 0B:AF46: A5 01     STA ram_0000
C - - - - - 0x02EF58 0B:AF48: F9 3D AF  LDA tbl_AF3D_палитра + $01,Y
C - - - - - 0x02EF5B 0B:AF4B: 85 01     STA ram_0001
                                        JSR sub_D37C_подкорректировать_поинтер_палитры
                                        CLC
                                        ADC ram_0000
                                        STA ram_0000
                                        TYA
                                        ADC ram_0001
                                        STA ram_0001
                                        LDA tbl_D374,X
                                        ORA ram_066D
                                        STA ram_066D
                                        TXA
                                        ASL
                                        ASL
                                        TAX
; первый цвет из 4х всегда черный по умолчанию (может быть осветлен в будущем)
                                        LDA #$0F
                                        STA ram_pal_buffer,X
                                        INX
C - - - - - 0x02EF5D 0B:AF4D: A0 02     LDY #$00
bra_AF4F_loop:
C - - - - - 0x02EF5F 0B:AF4F: B1 00     LDA (ram_0000),Y
C - - - - - 0x02EF61 0B:AF51: 9D 4C 06  STA ram_pal_buffer,X
C - - - - - 0x02EF64 0B:AF54: CA        INX
C - - - - - 0x02EF65 0B:AF55: 88        INY
                                        CPY #$03
C - - - - - 0x02EF66 0B:AF56: 10 F7     BCC bra_AF4F_loop
C - - - - - 0x02EF68 0B:AF58: 4C 17 F6  RTS



sub_D37C_подкорректировать_поинтер_палитры:
; перемещено из банка FF
; умножить индекс в 0005 на 03 и добавить к базовому поинтеру
C D 2 - - - 0x03D38C 0F:D37C: 85 05     LDA ram_0005
C - - - - - 0x03D38E 0F:D37E: AC 93 D3  LDY #$00
C - - - - - 0x03D391 0F:D381: 0A        ASL
C - - - - - 0x03D392 0F:D382: 20 8D D3  JSR sub_D38D
C - - - - - 0x03D395 0F:D385: 65 05     ADC ram_0005
C - - - - - 0x03D397 0F:D387: 20 8D D3  JSR sub_D38D
C - - - - - 0x03D39A 0F:D38A: 6D 92 D3  ADC #$00
sub_D38D:
C - - - - - 0x03D39D 0F:D38D: 90 02     BCC bra_D391_RTS
C - - - - - 0x03D39F 0F:D38F: 18        CLC
C - - - - - 0x03D3A0 0F:D390: C8        INY
bra_D391_RTS:
C - - - - - 0x03D3A1 0F:D391: 60        RTS



tbl_D374:
; перемещено из банка FF
- D 2 - - - 0x03D384 0F:D374: 01        .byte $01   ; 00
- D 2 - - - 0x03D385 0F:D375: 02        .byte $02   ; 01
- D 2 - - - 0x03D386 0F:D376: 04        .byte $04   ; 02
- D 2 - - - 0x03D387 0F:D377: 08        .byte $08   ; 03
- D 2 - - - 0x03D388 0F:D378: 10        .byte $10   ; 04
- D 2 - - - 0x03D389 0F:D379: 20        .byte $20   ; 05
- D 2 - - - 0x03D38A 0F:D37A: 40        .byte $40   ; 06
- D 2 - - - 0x03D38B 0F:D37B: 80        .byte $80   ; 07
; bzk bug, считывается байт под индексом 08 из-за 0x038381



sub_0x02EFA0:
C - - - - - 0x02EFA6 0B:AF96: A4 2C     LDY ram_game_mode
; con_gm_vs_cpu
C - - - - - 0x02EFA8 0B:AF98: C0 01     CPY #$01
C - - - - - 0x02EFAA 0B:AF9A: D0 17     BNE bra_AFB3_RTS    ; if con_gm_vs_player
- - - - - - 0x02EFAC 0B:AF9C: AA        LDX ram_кто_выиграл_бой
- - - - - - 0x02EFAD 0B:AF9D: BD 29 01  LDA ram_plr_колво_побед_в_матчах,X
- - - - - - 0x02EFB0 0B:AFA0: 29 0F     AND #$0F
- - - - - - 0x02EFB2 0B:AFA2: 49 09     EOR #$09
- - - - - - 0x02EFB4 0B:AFA4: D0 0A     BNE bra_AFB0
- - - - - - 0x02EFB6 0B:AFA6: BD 29 01  LDA ram_plr_колво_побед_в_матчах,X
- - - - - - 0x02EFB9 0B:AFA9: 29 F0     AND #$F0
- - - - - - 0x02EFBB 0B:AFAB: 69 0E     ADC #$0E
- - - - - - 0x02EFBD 0B:AFAD: 9D 29 01  STA ram_plr_колво_побед_в_матчах,X
bra_AFB0:
- - - - - - 0x02EFC0 0B:AFB0: FE 29 01  INC ram_plr_колво_побед_в_матчах,X
bra_AFB3_RTS:
C - - - - - 0x02EFC3 0B:AFB3: 60        RTS



tbl_AFEA_night:
- - - - - - 0x02EFFA 0B:AFEA: 20        .byte $20, $20, $20   ; 00
- - - - - - 0x02EFFD 0B:AFED: 16        .byte $16, $1A, $20   ; 01
- - - - - - 0x02F000 0B:AFF0: 01        .byte $01, $11, $21   ; 02
- - - - - - 0x02F003 0B:AFF3: 0C        .byte $0C, $1C, $21   ; 03
- - - - - - 0x02F006 0B:AFF6: 01        .byte $01, $11, $21   ; 04
- - - - - - 0x02F009 0B:AFF9: 03        .byte $03, $13, $23   ; 05
- - - - - - 0x02F00C 0B:AFFC: 0A        .byte $0A, $1A, $2A   ; 06
- - - - - - 0x02F00F 0B:AFFF: 0F        .byte $0F, $06, $20   ; 07
- - - - - - 0x02F012 0B:B002: 06        .byte $06, $16, $20   ; 08
- - - - - - 0x02F015 0B:B005: 03        .byte $03, $13, $23   ; 09
- - - - - - 0x02F018 0B:B008: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F01B 0B:B00B: 01        .byte $01, $11, $21   ; 0B
- - - - - - 0x02F01E 0B:B00E: 0C        .byte $0C, $1C, $21   ; 0C
- - - - - - 0x02F021 0B:B011: 0F        .byte $0F, $1A, $12   ; 0D
- - - - - - 0x02F024 0B:B014: 0F        .byte $0F, $1A, $16   ; 0E
- - - - - - 0x02F027 0B:B017: 0F        .byte $0F, $1A, $27   ; 0F
- - - - - - 0x02F02A 0B:B01A: 0F        .byte $0F, $1A, $14   ; 10
- - - - - - 0x02F02D 0B:B01D: 0F        .byte $0F, $16, $33   ; 11
- - - - - - 0x02F030 0B:B020: 0F        .byte $0F, $27, $30   ; 12
- - - - - - 0x02F033 0B:B023: 0F        .byte $0F, $28, $20   ; 13
- - - - - - 0x02F036 0B:B026: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F039 0B:B029: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F03C 0B:B02C: 03        .byte $03, $02, $23   ; 16
- - - - - - 0x02F03F 0B:B02F: 0B        .byte $0B, $1A, $29   ; 17
- - - - - - 0x02F042 0B:B032: 06        .byte $06, $06, $06   ; 18
- - - - - - 0x02F045 0B:B035: 0F        .byte $0F, $2C, $12   ; 19
- - - - - - 0x02F048 0B:B038: 0F        .byte $0F, $2C, $16   ; 1A
- - - - - - 0x02F04B 0B:B03B: 0F        .byte $0F, $2C, $27   ; 1B
- - - - - - 0x02F04E 0B:B03E: 0F        .byte $0F, $2C, $14   ; 1C
- - - - - - 0x02F051 0B:B041: 0F        .byte $0F, $08, $39   ; 1D
- - - - - - 0x02F054 0B:B044: 0F        .byte $0F, $18, $30   ; 1E
- - - - - - 0x02F057 0B:B047: 0F        .byte $0F, $04, $30   ; 1F
- - - - - - 0x02F05A 0B:B04A: 05        .byte $05, $16, $26   ; 20
- - - - - - 0x02F05D 0B:B04D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F060 0B:B050: 20        .byte $20, $38, $20   ; 22
- - - - - - 0x02F063 0B:B053: 0F        .byte $0F, $0F, $00   ; 23
- - - - - - 0x02F066 0B:B056: 16        .byte $16, $0F, $26   ; 24
- - - - - - 0x02F069 0B:B059: 16        .byte $16, $20, $38   ; 25
- - - - - - 0x02F06C 0B:B05C: 13        .byte $13, $23, $02   ; 26
- - - - - - 0x02F06F 0B:B05F: 03        .byte $03, $13, $02   ; 27
- - - - - - 0x02F072 0B:B062: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F075 0B:B065: 03        .byte $03, $13, $23   ; 29
- - - - - - 0x02F078 0B:B068: 1C        .byte $1C, $2C, $3C   ; 2A
- - - - - - 0x02F07B 0B:B06B: 01        .byte $01, $11, $21   ; 2B
- - - - - - 0x02F07E 0B:B06E: 11        .byte $11, $19, $29   ; 2C
- - - - - - 0x02F081 0B:B071: 01        .byte $01, $11, $21   ; 2D
- - - - - - 0x02F084 0B:B074: 05        .byte $05, $15, $20   ; 2E
- - - - - - 0x02F087 0B:B077: 18        .byte $18, $28, $20   ; 2F
- - - - - - 0x02F08A 0B:B07A: 03        .byte $03, $13, $20   ; 30
- - - - - - 0x02F08D 0B:B07D: 06        .byte $06, $16, $20   ; 31
- - - - - - 0x02F090 0B:B080: 12        .byte $12, $22, $32   ; 32
- - - - - - 0x02F093 0B:B083: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F096 0B:B086: 13        .byte $13, $23, $33   ; 34
- - - - - - 0x02F099 0B:B089: 1A        .byte $1A, $2A, $23   ; 35
- - - - - - 0x02F09C 0B:B08C: 18        .byte $18, $28, $23   ; 36
- - - - - - 0x02F09F 0B:B08F: 10        .byte $10, $20, $23   ; 37
- - - - - - 0x02F0A2 0B:B092: 15        .byte $15, $25, $23   ; 38
- - - - - - 0x02F0A5 0B:B095: 14        .byte $14, $24, $23   ; 39
- - - - - - 0x02F0A8 0B:B098: 18        .byte $18, $28, $1A   ; 3A
- - - - - - 0x02F0AB 0B:B09B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F0AE 0B:B09E: 0C        .byte $0C, $1C, $21   ; 3C
- - - - - - 0x02F0B1 0B:B0A1: 14        .byte $14, $24, $23   ; 3D
- - - - - - 0x02F0B4 0B:B0A4: 18        .byte $18, $28, $27   ; 3E
- - - - - - 0x02F0B7 0B:B0A7: 0F        .byte $0F, $38, $37   ; 3F
- - - - - - 0x02F0BA 0B:B0AA: 14        .byte $14, $24, $30   ; 40
- - - - - - 0x02F0BD 0B:B0AD: 0C        .byte $0C, $1C, $2C   ; 41
- - - - - - 0x02F0C0 0B:B0B0: 20        .byte $20, $1A, $21   ; 42
- - - - - - 0x02F0C3 0B:B0B3: 1A        .byte $1A, $2A, $11   ; 43
- - - - - - 0x02F0C6 0B:B0B6: 1A        .byte $1A, $2A, $16   ; 44
- - - - - - 0x02F0C9 0B:B0B9: 1A        .byte $1A, $2A, $27   ; 45
- - - - - - 0x02F0CC 0B:B0BC: 1A        .byte $1A, $2A, $14   ; 46
- - - - - - 0x02F0CF 0B:B0BF: 17        .byte $17, $27, $05   ; 47
- - - - - - 0x02F0D2 0B:B0C2: 18        .byte $18, $28, $20   ; 48
- - - - - - 0x02F0D5 0B:B0C5: 13        .byte $13, $23, $38   ; 49
- - - - - - 0x02F0D8 0B:B0C8: 17        .byte $17, $27, $28   ; 4A
- - - - - - 0x02F0DB 0B:B0CB: 01        .byte $01, $11, $38   ; 4B
- - - - - - 0x02F0DE 0B:B0CE: 16        .byte $16, $11, $20   ; 4C
- - - - - - 0x02F0E1 0B:B0D1: 1B        .byte $1B, $2B, $3B   ; 4D
- - - - - - 0x02F0E4 0B:B0D4: 17        .byte $17, $27, $37   ; 4E
- - - - - - 0x02F0E7 0B:B0D7: 13        .byte $13, $23, $20   ; 4F
- - - - - - 0x02F0EA 0B:B0DA: 23        .byte $23, $10, $20   ; 50
- - - - - - 0x02F0ED 0B:B0DD: 14        .byte $14, $23, $13   ; 51
- - - - - - 0x02F0F0 0B:B0E0: 13        .byte $13, $23, $13   ; 52
- - - - - - 0x02F0F3 0B:B0E3: 19        .byte $19, $29, $39   ; 53
- - - - - - 0x02F0F6 0B:B0E6: 0C        .byte $0C, $1C, $21   ; 54
- - - - - - 0x02F0F9 0B:B0E9: 02        .byte $02, $12, $32   ; 55
- - - - - - 0x02F0FC 0B:B0EC: 18        .byte $18, $14, $20   ; 56
- - - - - - 0x02F0FF 0B:B0EF: 03        .byte $03, $13, $23   ; 57
- - - - - - 0x02F102 0B:B0F2: 11        .byte $11, $2A, $20   ; 58
- - - - - - 0x02F105 0B:B0F5: 18        .byte $18, $28, $11   ; 59
- - - - - - 0x02F108 0B:B0F8: 16        .byte $16, $2A, $20   ; 5A
- - - - - - 0x02F10B 0B:B0FB: 18        .byte $18, $28, $16   ; 5B
- - - - - - 0x02F10E 0B:B0FE: 27        .byte $27, $2A, $20   ; 5C
- - - - - - 0x02F111 0B:B101: 14        .byte $14, $2A, $20   ; 5D
- - - - - - 0x02F114 0B:B104: 15        .byte $15, $27, $20   ; 5E
- - - - - - 0x02F117 0B:B107: 15        .byte $15, $10, $20   ; 5F
- - - - - - 0x02F11A 0B:B10A: 12        .byte $12, $15, $23   ; 60
- - - - - - 0x02F11D 0B:B10D: 13        .byte $13, $28, $20   ; 61
- - - - - - 0x02F120 0B:B110: 18        .byte $18, $28, $20   ; 62
- - - - - - 0x02F123 0B:B113: 18        .byte $18, $28, $16   ; 63
- - - - - - 0x02F126 0B:B116: 27        .byte $27, $13, $03   ; 64
- - - - - - 0x02F129 0B:B119: 18        .byte $18, $28, $14   ; 65
- - - - - - 0x02F12C 0B:B11C: 18        .byte $18, $28, $20   ; 66
                                        .byte $05, $1A, $26   ; 67



tbl_B1EA_original:
- - - - - - 0x02F1FA 0B:B1EA: 20        .byte $20, $20, $20   ; 00
- - - - - - 0x02F1FD 0B:B1ED: 16        .byte $16, $1A, $20   ; 01
- - - - - - 0x02F200 0B:B1F0: 00        .byte $00, $10, $20   ; 02
- - - - - - 0x02F203 0B:B1F3: 0C        .byte $0C, $1C, $21   ; 03
- - - - - - 0x02F206 0B:B1F6: 01        .byte $01, $11, $21   ; 04
- - - - - - 0x02F209 0B:B1F9: 03        .byte $03, $13, $23   ; 05
- - - - - - 0x02F20C 0B:B1FC: 0A        .byte $0A, $1A, $2A   ; 06
- - - - - - 0x02F20F 0B:B1FF: 04        .byte $04, $16, $37   ; 07
- - - - - - 0x02F212 0B:B202: 11        .byte $11, $21, $20   ; 08
- - - - - - 0x02F215 0B:B205: 06        .byte $06, $16, $27   ; 09
- - - - - - 0x02F218 0B:B208: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F21B 0B:B20B: 17        .byte $17, $27, $38   ; 0B
- - - - - - 0x02F21E 0B:B20E: 06        .byte $06, $16, $26   ; 0C
- - - - - - 0x02F221 0B:B211: 09        .byte $09, $2A, $11   ; 0D
- - - - - - 0x02F224 0B:B214: 0C        .byte $0C, $2C, $16   ; 0E
- - - - - - 0x02F227 0B:B217: 0B        .byte $0B, $2B, $27   ; 0F
- - - - - - 0x02F22A 0B:B21A: 08        .byte $08, $28, $14   ; 10
- - - - - - 0x02F22D 0B:B21D: 08        .byte $08, $27, $33   ; 11
- - - - - - 0x02F230 0B:B220: 08        .byte $08, $28, $20   ; 12
- - - - - - 0x02F233 0B:B223: 07        .byte $07, $16, $31   ; 13
- - - - - - 0x02F236 0B:B226: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F239 0B:B229: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F23C 0B:B22C: 05        .byte $05, $07, $10   ; 16
- - - - - - 0x02F23F 0B:B22F: 1B        .byte $1B, $21, $31   ; 17
- - - - - - 0x02F242 0B:B232: 01        .byte $01, $01, $01   ; 18
- - - - - - 0x02F245 0B:B235: 09        .byte $09, $1A, $11   ; 19
- - - - - - 0x02F248 0B:B238: 0A        .byte $0A, $1C, $15   ; 1A
- - - - - - 0x02F24B 0B:B23B: 0B        .byte $0B, $1B, $28   ; 1B
- - - - - - 0x02F24E 0B:B23E: 0A        .byte $0A, $19, $14   ; 1C
- - - - - - 0x02F251 0B:B241: 03        .byte $03, $27, $22   ; 1D
- - - - - - 0x02F254 0B:B244: 08        .byte $08, $27, $20   ; 1E
- - - - - - 0x02F257 0B:B247: 02        .byte $02, $22, $20   ; 1F
- - - - - - 0x02F25A 0B:B24A: 17        .byte $17, $28, $38   ; 20
- - - - - - 0x02F25D 0B:B24D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F260 0B:B250: 20        .byte $20, $38, $20   ; 22
- - - - - - 0x02F263 0B:B253: 0F        .byte $0F, $0F, $00   ; 23
- - - - - - 0x02F266 0B:B256: 16        .byte $16, $0F, $0F   ; 24
- - - - - - 0x02F269 0B:B259: 16        .byte $16, $20, $38   ; 25
- - - - - - 0x02F26C 0B:B25C: 16        .byte $16, $26, $02   ; 26
- - - - - - 0x02F26F 0B:B25F: 06        .byte $06, $16, $02   ; 27
- - - - - - 0x02F272 0B:B262: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F275 0B:B265: 04        .byte $04, $14, $24   ; 29
- - - - - - 0x02F278 0B:B268: 1C        .byte $1C, $2C, $3C   ; 2A
- - - - - - 0x02F27B 0B:B26B: 07        .byte $07, $17, $27   ; 2B
- - - - - - 0x02F27E 0B:B26E: 11        .byte $11, $19, $29   ; 2C
- - - - - - 0x02F281 0B:B271: 01        .byte $01, $11, $20   ; 2D
- - - - - - 0x02F284 0B:B274: 05        .byte $05, $15, $20   ; 2E
- - - - - - 0x02F287 0B:B277: 18        .byte $18, $28, $20   ; 2F
- - - - - - 0x02F28A 0B:B27A: 03        .byte $03, $13, $20   ; 30
- - - - - - 0x02F28D 0B:B27D: 06        .byte $06, $16, $20   ; 31
- - - - - - 0x02F290 0B:B280: 12        .byte $12, $22, $32   ; 32
- - - - - - 0x02F293 0B:B283: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F296 0B:B286: 13        .byte $13, $23, $33   ; 34
- - - - - - 0x02F299 0B:B289: 1A        .byte $1A, $2A, $23   ; 35
- - - - - - 0x02F29C 0B:B28C: 18        .byte $18, $28, $23   ; 36
- - - - - - 0x02F29F 0B:B28F: 10        .byte $10, $20, $23   ; 37
- - - - - - 0x02F2A2 0B:B292: 15        .byte $15, $25, $23   ; 38
- - - - - - 0x02F2A5 0B:B295: 14        .byte $14, $24, $23   ; 39
- - - - - - 0x02F2A8 0B:B298: 18        .byte $18, $28, $1A   ; 3A
- - - - - - 0x02F2AB 0B:B29B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F2AE 0B:B29E: 08        .byte $08, $18, $28   ; 3C
- - - - - - 0x02F2B1 0B:B2A1: 14        .byte $14, $24, $23   ; 3D
- - - - - - 0x02F2B4 0B:B2A4: 18        .byte $18, $28, $27   ; 3E
- - - - - - 0x02F2B7 0B:B2A7: 0F        .byte $0F, $38, $37   ; 3F
- - - - - - 0x02F2BA 0B:B2AA: 16        .byte $16, $26, $20   ; 40
- - - - - - 0x02F2BD 0B:B2AD: 0C        .byte $0C, $1C, $2C   ; 41
- - - - - - 0x02F2C0 0B:B2B0: 20        .byte $20, $1A, $21   ; 42
- - - - - - 0x02F2C3 0B:B2B3: 1A        .byte $1A, $2A, $11   ; 43
- - - - - - 0x02F2C6 0B:B2B6: 1C        .byte $1C, $2C, $16   ; 44
- - - - - - 0x02F2C9 0B:B2B9: 1B        .byte $1B, $2B, $27   ; 45
- - - - - - 0x02F2CC 0B:B2BC: 18        .byte $18, $28, $14   ; 46
- - - - - - 0x02F2CF 0B:B2BF: 17        .byte $17, $27, $05   ; 47
- - - - - - 0x02F2D2 0B:B2C2: 18        .byte $18, $28, $20   ; 48
- - - - - - 0x02F2D5 0B:B2C5: 13        .byte $13, $23, $38   ; 49
- - - - - - 0x02F2D8 0B:B2C8: 17        .byte $17, $27, $16   ; 4A
- - - - - - 0x02F2DB 0B:B2CB: 00        .byte $00, $10, $38   ; 4B
- - - - - - 0x02F2DE 0B:B2CE: 16        .byte $16, $10, $20   ; 4C
- - - - - - 0x02F2E1 0B:B2D1: 1B        .byte $1B, $2B, $3B   ; 4D
- - - - - - 0x02F2E4 0B:B2D4: 17        .byte $17, $27, $37   ; 4E
- - - - - - 0x02F2E7 0B:B2D7: 13        .byte $13, $23, $20   ; 4F
- - - - - - 0x02F2EA 0B:B2DA: 23        .byte $23, $10, $20   ; 50
- - - - - - 0x02F2ED 0B:B2DD: 14        .byte $14, $24, $26   ; 51
- - - - - - 0x02F2F0 0B:B2E0: 13        .byte $13, $23, $26   ; 52
- - - - - - 0x02F2F3 0B:B2E3: 11        .byte $11, $21, $31   ; 53
- - - - - - 0x02F2F6 0B:B2E6: 05        .byte $05, $15, $25   ; 54
- - - - - - 0x02F2F9 0B:B2E9: 02        .byte $02, $12, $32   ; 55
- - - - - - 0x02F2FC 0B:B2EC: 18        .byte $18, $14, $20   ; 56
- - - - - - 0x02F2FF 0B:B2EF: 16        .byte $16, $26, $36   ; 57
- - - - - - 0x02F302 0B:B2F2: 11        .byte $11, $2A, $20   ; 58
- - - - - - 0x02F305 0B:B2F5: 17        .byte $17, $27, $11   ; 59
- - - - - - 0x02F308 0B:B2F8: 16        .byte $16, $2C, $20   ; 5A
- - - - - - 0x02F30B 0B:B2FB: 18        .byte $18, $28, $16   ; 5B
- - - - - - 0x02F30E 0B:B2FE: 27        .byte $27, $2B, $20   ; 5C
- - - - - - 0x02F311 0B:B301: 14        .byte $14, $28, $20   ; 5D
- - - - - - 0x02F314 0B:B304: 15        .byte $15, $27, $20   ; 5E
- - - - - - 0x02F317 0B:B307: 15        .byte $15, $10, $20   ; 5F
- - - - - - 0x02F31A 0B:B30A: 12        .byte $12, $15, $23   ; 60
- - - - - - 0x02F31D 0B:B30D: 13        .byte $13, $28, $20   ; 61
- - - - - - 0x02F320 0B:B310: 18        .byte $18, $28, $20   ; 62
- - - - - - 0x02F323 0B:B313: 18        .byte $18, $28, $16   ; 63
- - - - - - 0x02F326 0B:B316: 03        .byte $03, $13, $27   ; 64
- - - - - - 0x02F329 0B:B319: 17        .byte $17, $27, $14   ; 65
- - - - - - 0x02F32C 0B:B31C: 17        .byte $17, $27, $20   ; 66
                                        .byte $17, $11, $38   ; 67



tbl_B3EA_green:
- D 1 - I - 0x02F3FA 0B:B3EA: 20        .byte $20, $20, $20   ; 00
- D 1 - I - 0x02F3FD 0B:B3ED: 16        .byte $16, $1A, $20   ; 01
- D 1 - I - 0x02F400 0B:B3F0: 00        .byte $00, $10, $20   ; 02
- D 1 - I - 0x02F403 0B:B3F3: 0C        .byte $0C, $1C, $21   ; 03
- D 1 - I - 0x02F406 0B:B3F6: 01        .byte $01, $11, $21   ; 04
- D 1 - I - 0x02F409 0B:B3F9: 03        .byte $03, $13, $23   ; 05
- D 1 - I - 0x02F40C 0B:B3FC: 0A        .byte $0A, $1A, $2A   ; 06
- D 1 - I - 0x02F40F 0B:B3FF: 04        .byte $04, $16, $37   ; 07
- D 1 - I - 0x02F412 0B:B402: 11        .byte $11, $21, $20   ; 08
- - - - - - 0x02F415 0B:B405: 06        .byte $06, $16, $27   ; 09
- - - - - - 0x02F418 0B:B408: 07        .byte $07, $15, $28   ; 0A
- - - - - - 0x02F41B 0B:B40B: 17        .byte $17, $27, $38   ; 0B
- - - - - - 0x02F41E 0B:B40E: 06        .byte $06, $16, $26   ; 0C
- D 1 - I - 0x02F421 0B:B411: 0B        .byte $0B, $2A, $12   ; 0D
- D 1 - I - 0x02F424 0B:B414: 0B        .byte $0B, $2A, $16   ; 0E
- D 1 - I - 0x02F427 0B:B417: 0B        .byte $0B, $2A, $27   ; 0F
- D 1 - I - 0x02F42A 0B:B41A: 0B        .byte $0B, $2A, $14   ; 10
- D 1 - I - 0x02F42D 0B:B41D: 08        .byte $08, $27, $33   ; 11
- D 1 - I - 0x02F430 0B:B420: 08        .byte $08, $28, $20   ; 12
- D 1 - I - 0x02F433 0B:B423: 07        .byte $07, $16, $31   ; 13
- D 1 - I - 0x02F436 0B:B426: 18        .byte $18, $28, $37   ; 14
- - - - - - 0x02F439 0B:B429: 00        .byte $00, $00, $00   ; 15
- - - - - - 0x02F43C 0B:B42C: 05        .byte $05, $07, $10   ; 16
- D 1 - I - 0x02F43F 0B:B42F: 1B        .byte $1B, $21, $31   ; 17
- D 1 - I - 0x02F442 0B:B432: 01        .byte $01, $01, $01   ; 18
- D 1 - I - 0x02F445 0B:B435: 0B        .byte $0B, $1A, $12   ; 19
- - - - - - 0x02F448 0B:B438: 0B        .byte $0B, $1A, $16   ; 1A
- - - - - - 0x02F44B 0B:B43B: 0B        .byte $0B, $1A, $27   ; 1B
- - - - - - 0x02F44E 0B:B43E: 0B        .byte $0B, $1A, $14   ; 1C
- - - - - - 0x02F451 0B:B441: 08        .byte $08, $27, $21   ; 1D
- - - - - - 0x02F454 0B:B444: 08        .byte $08, $27, $20   ; 1E
- - - - - - 0x02F457 0B:B447: 08        .byte $08, $22, $20   ; 1F
- D 1 - I - 0x02F45A 0B:B44A: 17        .byte $17, $28, $38   ; 20
- - - - - - 0x02F45D 0B:B44D: 00        .byte $00, $00, $00   ; 21
- - - - - - 0x02F460 0B:B450: 20        .byte $20, $38, $20   ; 22
- D 1 - I - 0x02F463 0B:B453: 0F        .byte $0F, $0F, $00   ; 23
- D 1 - I - 0x02F466 0B:B456: 16        .byte $16, $0F, $0F   ; 24
- D 1 - I - 0x02F469 0B:B459: 16        .byte $16, $20, $38   ; 25
- D 1 - I - 0x02F46C 0B:B45C: 16        .byte $16, $26, $02   ; 26
- D 1 - I - 0x02F46F 0B:B45F: 06        .byte $06, $16, $02   ; 27
- - - - - - 0x02F472 0B:B462: 0F        .byte $0F, $00, $10   ; 28
- - - - - - 0x02F475 0B:B465: 04        .byte $04, $14, $24   ; 29
- D 1 - I - 0x02F478 0B:B468: 1C        .byte $1C, $2C, $3C   ; 2A
- D 1 - I - 0x02F47B 0B:B46B: 07        .byte $07, $17, $27   ; 2B
- D 1 - I - 0x02F47E 0B:B46E: 11        .byte $11, $19, $29   ; 2C
- D 1 - I - 0x02F481 0B:B471: 01        .byte $01, $11, $20   ; 2D
- D 1 - I - 0x02F484 0B:B474: 05        .byte $05, $15, $20   ; 2E
- D 1 - I - 0x02F487 0B:B477: 18        .byte $18, $28, $20   ; 2F
- D 1 - I - 0x02F48A 0B:B47A: 03        .byte $03, $13, $20   ; 30
- D 1 - I - 0x02F48D 0B:B47D: 06        .byte $06, $16, $20   ; 31
- D 1 - I - 0x02F490 0B:B480: 12        .byte $12, $22, $32   ; 32
- D 1 - I - 0x02F493 0B:B483: 16        .byte $16, $26, $36   ; 33
- - - - - - 0x02F496 0B:B486: 13        .byte $13, $23, $33   ; 34
- D 1 - I - 0x02F499 0B:B489: 1A        .byte $1A, $2A, $23   ; 35
- D 1 - I - 0x02F49C 0B:B48C: 18        .byte $18, $28, $23   ; 36
- D 1 - I - 0x02F49F 0B:B48F: 10        .byte $10, $20, $23   ; 37
- D 1 - I - 0x02F4A2 0B:B492: 15        .byte $15, $25, $23   ; 38
- D 1 - I - 0x02F4A5 0B:B495: 14        .byte $14, $24, $23   ; 39
- D 1 - I - 0x02F4A8 0B:B498: 18        .byte $18, $28, $1A   ; 3A
- D 1 - I - 0x02F4AB 0B:B49B: 08        .byte $08, $24, $28   ; 3B
- - - - - - 0x02F4AE 0B:B49E: 08        .byte $08, $18, $28   ; 3C
- D 1 - I - 0x02F4B1 0B:B4A1: 14        .byte $14, $24, $23   ; 3D
- D 1 - I - 0x02F4B4 0B:B4A4: 18        .byte $18, $28, $27   ; 3E
- D 1 - I - 0x02F4B7 0B:B4A7: 0F        .byte $0F, $38, $37   ; 3F
- D 1 - I - 0x02F4BA 0B:B4AA: 16        .byte $16, $26, $20   ; 40
- D 1 - I - 0x02F4BD 0B:B4AD: 0C        .byte $0C, $1C, $2C   ; 41
- D 1 - I - 0x02F4C0 0B:B4B0: 20        .byte $20, $1A, $21   ; 42
- D 1 - I - 0x02F4C3 0B:B4B3: 1A        .byte $1A, $2A, $11   ; 43
- D 1 - I - 0x02F4C6 0B:B4B6: 1A        .byte $1A, $2A, $16   ; 44
- D 1 - I - 0x02F4C9 0B:B4B9: 1A        .byte $1A, $2A, $27   ; 45
- D 1 - I - 0x02F4CC 0B:B4BC: 1A        .byte $1A, $2A, $14   ; 46
- D 1 - I - 0x02F4CF 0B:B4BF: 17        .byte $17, $27, $05   ; 47
- D 1 - I - 0x02F4D2 0B:B4C2: 18        .byte $18, $28, $20   ; 48
- D 1 - I - 0x02F4D5 0B:B4C5: 13        .byte $13, $23, $38   ; 49
- D 1 - I - 0x02F4D8 0B:B4C8: 17        .byte $17, $27, $16   ; 4A
- D 1 - I - 0x02F4DB 0B:B4CB: 00        .byte $00, $10, $38   ; 4B
- D 1 - I - 0x02F4DE 0B:B4CE: 16        .byte $16, $10, $20   ; 4C
- D 1 - I - 0x02F4E1 0B:B4D1: 1B        .byte $1B, $2B, $3B   ; 4D
- D 1 - I - 0x02F4E4 0B:B4D4: 17        .byte $17, $27, $37   ; 4E
- D 1 - I - 0x02F4E7 0B:B4D7: 13        .byte $13, $23, $20   ; 4F
- D 1 - I - 0x02F4EA 0B:B4DA: 23        .byte $23, $10, $20   ; 50
- D 1 - I - 0x02F4ED 0B:B4DD: 14        .byte $14, $24, $26   ; 51
- D 1 - I - 0x02F4F0 0B:B4E0: 13        .byte $13, $23, $26   ; 52
- D 1 - I - 0x02F4F3 0B:B4E3: 11        .byte $11, $21, $31   ; 53
- D 1 - I - 0x02F4F6 0B:B4E6: 05        .byte $05, $15, $25   ; 54
- D 1 - I - 0x02F4F9 0B:B4E9: 02        .byte $02, $12, $32   ; 55
- D 1 - I - 0x02F4FC 0B:B4EC: 18        .byte $18, $14, $20   ; 56
- D 1 - I - 0x02F4FF 0B:B4EF: 16        .byte $16, $26, $36   ; 57
- D 1 - I - 0x02F502 0B:B4F2: 11        .byte $11, $2A, $20   ; 58
- D 1 - I - 0x02F505 0B:B4F5: 18        .byte $18, $28, $11   ; 59
- D 1 - I - 0x02F508 0B:B4F8: 16        .byte $16, $2A, $20   ; 5A
- D 1 - I - 0x02F50B 0B:B4FB: 18        .byte $18, $28, $16   ; 5B
- D 1 - I - 0x02F50E 0B:B4FE: 27        .byte $27, $2A, $20   ; 5C
- D 1 - I - 0x02F511 0B:B501: 14        .byte $14, $2A, $20   ; 5D
- D 1 - I - 0x02F514 0B:B504: 15        .byte $15, $27, $20   ; 5E
- D 1 - I - 0x02F517 0B:B507: 15        .byte $15, $10, $20   ; 5F
- D 1 - I - 0x02F51A 0B:B50A: 12        .byte $12, $15, $23   ; 60
- D 1 - I - 0x02F51D 0B:B50D: 13        .byte $13, $28, $20   ; 61
- D 1 - I - 0x02F520 0B:B510: 18        .byte $18, $28, $20   ; 62
- D 1 - I - 0x02F523 0B:B513: 18        .byte $18, $28, $16   ; 63
- D 1 - I - 0x02F526 0B:B516: 03        .byte $03, $13, $27   ; 64
- D 1 - I - 0x02F529 0B:B519: 18        .byte $18, $28, $14   ; 65
- D 1 - I - 0x02F52C 0B:B51C: 18        .byte $18, $28, $20   ; 66
                                        .byte $17, $11, $38   ; 67



tbl_B3EA_выбор_палитры_фона:
                                        .byte con_D57A_05   ; 00 story
                                        .byte con_D57A_05   ; 01 vs player
                                        .byte con_D57A_05   ; 02 vs cpu
                                        .byte con_D57A_06   ; 03 vs team



tbl_B5E0_lo:
- D 1 - - - 0x02F5F0 0B:B5E0: F0        .byte < _off013_B5F0_00_leo ; con_fighter_leo
- D 1 - - - 0x02F5F1 0B:B5E1: F0        .byte < _off013_B5F0_01_raph ; con_fighter_raph
- D 1 - - - 0x02F5F2 0B:B5E2: F0        .byte < _off013_B5F0_02_mike ; con_fighter_mike
- D 1 - - - 0x02F5F3 0B:B5E3: F0        .byte < _off013_B5F0_03_don ; con_fighter_don
- D 1 - - - 0x02F5F4 0B:B5E4: F0        .byte < _off013_B5F0_04_casey ; con_fighter_casey
- D 1 - - - 0x02F5F5 0B:B5E5: 50        .byte < _off013_B650_05_hot ; con_fighter_hot
- D 1 - - - 0x02F5F6 0B:B5E6: B0        .byte < _off013_B6B0_06_shred ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte < _off013_B5F0_07 ; con_fighter___leo
                                        .byte < _off013_B5F0_08 ; con_fighter___raph
                                        .byte < _off013_B5F0_09 ; con_fighter___mike
                                        .byte < _off013_B5F0_0A ; con_fighter___don
                                        .byte < _off013_B5F0_0B ; con_fighter___casey
                                        .byte < _off013_B650_0C ; con_fighter___hot
                                        .byte < _off013_B6B0_0D ; con_fighter___shred
                                    .endif

tbl_B5E7_hi:
- D 1 - - - 0x02F5F7 0B:B5E7: B5        .byte > _off013_B5F0_00_leo ; con_fighter_leo
- D 1 - - - 0x02F5F8 0B:B5E8: B5        .byte > _off013_B5F0_01_raph ; con_fighter_raph
- D 1 - - - 0x02F5F9 0B:B5E9: B5        .byte > _off013_B5F0_02_mike ; con_fighter_mike
- D 1 - - - 0x02F5FA 0B:B5EA: B5        .byte > _off013_B5F0_03_don ; con_fighter_don
- D 1 - - - 0x02F5FB 0B:B5EB: B5        .byte > _off013_B5F0_04_casey ; con_fighter_casey
- D 1 - - - 0x02F5FC 0B:B5EC: B6        .byte > _off013_B650_05_hot ; con_fighter_hot
- D 1 - - - 0x02F5FD 0B:B5ED: B6        .byte > _off013_B6B0_06_shred ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte > _off013_B5F0_07 ; con_fighter___leo
                                        .byte > _off013_B5F0_08 ; con_fighter___raph
                                        .byte > _off013_B5F0_09 ; con_fighter___mike
                                        .byte > _off013_B5F0_0A ; con_fighter___don
                                        .byte > _off013_B5F0_0B ; con_fighter___casey
                                        .byte > _off013_B650_0C ; con_fighter___hot
                                        .byte > _off013_B6B0_0D ; con_fighter___shred
                                    .endif



; таблицы времени стана, получаемого персонажами от нормальных ударов
_off013_B5F0_00_leo:
_off013_B5F0_07:
_off013_B5F0_01_raph:
_off013_B5F0_08:
_off013_B5F0_02_mike:
_off013_B5F0_09:
_off013_B5F0_03_don:
_off013_B5F0_0A:
_off013_B5F0_04_casey: 
_off013_B5F0_0B:
- D 1 - I - 0x02F600 0B:B5F0: 0C        .byte $0C, $0B   ; 00
- D 1 - I - 0x02F602 0B:B5F2: 0C        .byte $0C, $0B   ; 01
- D 1 - I - 0x02F604 0B:B5F4: 0C        .byte $0C, $0B   ; 02
- D 1 - I - 0x02F606 0B:B5F6: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x02F608 0B:B5F8: 0C        .byte $0C, $0B   ; 04
- D 1 - I - 0x02F60A 0B:B5FA: 0C        .byte $0C, $0B   ; 05
- D 1 - I - 0x02F60C 0B:B5FC: 0C        .byte $0C, $0B   ; 06
- D 1 - I - 0x02F60E 0B:B5FE: 0C        .byte $0C, $0F   ; 07
- D 1 - I - 0x02F610 0B:B600: 0C        .byte $0C, $10   ; 08
- D 1 - I - 0x02F612 0B:B602: 0C        .byte $0C, $0B   ; 09
- D 1 - I - 0x02F614 0B:B604: 0C        .byte $0C, $0F   ; 0A
- - - - - - 0x02F616 0B:B606: 0C        .byte $0C, $0D   ; 0B
- D 1 - I - 0x02F618 0B:B608: 0C        .byte $0C, $0B   ; 0C
- D 1 - I - 0x02F61A 0B:B60A: 0C        .byte $0C, $0F   ; 0D
- D 1 - I - 0x02F61C 0B:B60C: 0C        .byte $0C, $0B   ; 0E
- - - - - - 0x02F61E 0B:B60E: 0C        .byte $0C, $0C   ; 0F
- - - - - - 0x02F620 0B:B610: 0C        .byte $0C, $0B   ; 10
- - - - - - 0x02F622 0B:B612: 0C        .byte $0C, $0C   ; 11
- - - - - - 0x02F624 0B:B614: 0C        .byte $0C, $0C   ; 12
- - - - - - 0x02F626 0B:B616: 0C        .byte $0C, $0B   ; 13
- - - - - - 0x02F628 0B:B618: 0C        .byte $0C, $0F   ; 14
- - - - - - 0x02F62A 0B:B61A: 0C        .byte $0C, $0E   ; 15
- - - - - - 0x02F62C 0B:B61C: 0C        .byte $0C, $0B   ; 16
- - - - - - 0x02F62E 0B:B61E: 0C        .byte $0C, $0F   ; 17
- - - - - - 0x02F630 0B:B620: 0C        .byte $0C, $0C   ; 18
- - - - - - 0x02F632 0B:B622: 0C        .byte $0C, $0F   ; 19
- - - - - - 0x02F634 0B:B624: 0C        .byte $0C, $0F   ; 1A
- - - - - - 0x02F636 0B:B626: 0C        .byte $0C, $0C   ; 1B
- - - - - - 0x02F638 0B:B628: 0C        .byte $0C, $0F   ; 1C
- - - - - - 0x02F63A 0B:B62A: 0C        .byte $0C, $10   ; 1D
- - - - - - 0x02F63C 0B:B62C: 0C        .byte $0C, $10   ; 1E
- - - - - - 0x02F63E 0B:B62E: 0C        .byte $0C, $0F   ; 1F
- - - - - - 0x02F640 0B:B630: 0C        .byte $0C, $10   ; 20
- - - - - - 0x02F642 0B:B632: 0C        .byte $0C, $0F   ; 21
- - - - - - 0x02F644 0B:B634: 0C        .byte $0C, $0F   ; 22
- D 1 - I - 0x02F646 0B:B636: 0C        .byte $0C, $0B   ; 23
- D 1 - I - 0x02F648 0B:B638: 0C        .byte $0C, $0B   ; 24
- D 1 - I - 0x02F64A 0B:B63A: 0C        .byte $0C, $0F   ; 25
- - - - - - 0x02F64C 0B:B63C: 0C        .byte $0C, $0C   ; 26
- - - - - - 0x02F64E 0B:B63E: 0C        .byte $0C, $0E   ; 27
- D 1 - I - 0x02F650 0B:B640: 0C        .byte $0C, $0B   ; 28
- - - - - - 0x02F652 0B:B642: 0C        .byte $0C, $0C   ; 29
- - - - - - 0x02F654 0B:B644: 0C        .byte $0C, $10   ; 2A
- - - - - - 0x02F656 0B:B646: 0C        .byte $0C, $0E   ; 2B
- D 1 - I - 0x02F658 0B:B648: 0C        .byte $0C, $0B   ; 2C
- - - - - - 0x02F65A 0B:B64A: 0C        .byte $0C, $0F   ; 2D
- - - - - - 0x02F65C 0B:B64C: FF        .byte $0C, $0C   ; 2E
- - - - - - 0x02F65E 0B:B64E: FF        .byte $00, $00   ; 30 rezerv
                                        .byte $00, $00   ; 31 rezerv
                                        .byte $00, $00   ; 32 rezerv
                                        .byte $00, $00   ; 33 rezerv
                                        .byte $00, $00   ; 34 rezerv
                                        .byte $00, $00   ; 35 rezerv
                                        .byte $00, $00   ; 36 rezerv
                                        .byte $00, $00   ; 37 rezerv
                                        .byte $00, $00   ; 38 rezerv
                                        .byte $00, $00   ; 39 rezerv
                                        .byte $00, $00   ; 3A rezerv
                                        .byte $00, $00   ; 3B rezerv
                                        .byte $00, $00   ; 3C rezerv
                                        .byte $00, $00   ; 3D rezerv
                                        .byte $00, $00   ; 3E rezerv



_off013_B650_05_hot:
_off013_B650_0C:
- D 1 - I - 0x02F660 0B:B650: 0B        .byte $0B, $0B   ; 00
- D 1 - I - 0x02F662 0B:B652: 0B        .byte $0B, $0B   ; 01
- - - - - - 0x02F664 0B:B654: 0B        .byte $0B, $0B   ; 02
- D 1 - I - 0x02F666 0B:B656: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x02F668 0B:B658: 0B        .byte $0B, $0B   ; 04
- - - - - - 0x02F66A 0B:B65A: 0B        .byte $0B, $0B   ; 05
- D 1 - I - 0x02F66C 0B:B65C: 0B        .byte $0B, $0B   ; 06
- - - - - - 0x02F66E 0B:B65E: 0C        .byte $0C, $0F   ; 07
- - - - - - 0x02F670 0B:B660: 0C        .byte $0C, $10   ; 08
- - - - - - 0x02F672 0B:B662: 0B        .byte $0B, $0B   ; 09
- - - - - - 0x02F674 0B:B664: 0C        .byte $0C, $0F   ; 0A
- - - - - - 0x02F676 0B:B666: 0C        .byte $0C, $0D   ; 0B
- - - - - - 0x02F678 0B:B668: 0B        .byte $0B, $0B   ; 0C
- D 1 - I - 0x02F67A 0B:B66A: 0C        .byte $0C, $0F   ; 0D
- - - - - - 0x02F67C 0B:B66C: 0B        .byte $0B, $0B   ; 0E
- - - - - - 0x02F67E 0B:B66E: 0C        .byte $0C, $0C   ; 0F
- - - - - - 0x02F680 0B:B670: 0B        .byte $0B, $0B   ; 10
- D 1 - I - 0x02F682 0B:B672: 0C        .byte $0C, $0C   ; 11
- - - - - - 0x02F684 0B:B674: 0C        .byte $0C, $0C   ; 12
- D 1 - I - 0x02F686 0B:B676: 0B        .byte $0B, $0B   ; 13
- D 1 - I - 0x02F688 0B:B678: 0C        .byte $0C, $0F   ; 14
- - - - - - 0x02F68A 0B:B67A: 0C        .byte $0C, $0E   ; 15
- - - - - - 0x02F68C 0B:B67C: 0B        .byte $0B, $0B   ; 16
- - - - - - 0x02F68E 0B:B67E: 0C        .byte $0C, $0F   ; 17
- - - - - - 0x02F690 0B:B680: 0C        .byte $0C, $0C   ; 18
- - - - - - 0x02F692 0B:B682: 0C        .byte $0C, $0F   ; 19
- - - - - - 0x02F694 0B:B684: 0C        .byte $0C, $0F   ; 1A
- - - - - - 0x02F696 0B:B686: 0C        .byte $0C, $0C   ; 1B
- - - - - - 0x02F698 0B:B688: 0C        .byte $0C, $0F   ; 1C
- - - - - - 0x02F69A 0B:B68A: 0C        .byte $0C, $10   ; 1D
- - - - - - 0x02F69C 0B:B68C: 0C        .byte $0C, $10   ; 1E
- - - - - - 0x02F69E 0B:B68E: 0C        .byte $0C, $0F   ; 1F
- - - - - - 0x02F6A0 0B:B690: 0C        .byte $0C, $10   ; 20
- - - - - - 0x02F6A2 0B:B692: 0C        .byte $0C, $0F   ; 21
- - - - - - 0x02F6A4 0B:B694: 0C        .byte $0C, $0F   ; 22
- D 1 - I - 0x02F6A6 0B:B696: 0B        .byte $0B, $0B   ; 23
- - - - - - 0x02F6A8 0B:B698: 0B        .byte $0B, $0B   ; 24
- - - - - - 0x02F6AA 0B:B69A: 0C        .byte $0C, $0F   ; 25
- - - - - - 0x02F6AC 0B:B69C: 0C        .byte $0C, $0C   ; 26
- - - - - - 0x02F6AE 0B:B69E: 0C        .byte $0C, $0E   ; 27
- D 1 - I - 0x02F6B0 0B:B6A0: 0B        .byte $0B, $0B   ; 28
- - - - - - 0x02F6B2 0B:B6A2: 0C        .byte $0C, $0C   ; 29
- - - - - - 0x02F6B4 0B:B6A4: 0C        .byte $0C, $10   ; 2A
- - - - - - 0x02F6B6 0B:B6A6: 0C        .byte $0C, $0E   ; 2B
- D 1 - I - 0x02F6B8 0B:B6A8: 0B        .byte $0B, $0B   ; 2C
- - - - - - 0x02F6BA 0B:B6AA: 0C        .byte $0C, $0F   ; 2D
- - - - - - 0x02F6BC 0B:B6AC: FF        .byte $0C, $0C   ; 2E
- - - - - - 0x02F6BE 0B:B6AE: FF        .byte $00, $00   ; 30 rezerv
                                        .byte $00, $00   ; 31 rezerv
                                        .byte $00, $00   ; 32 rezerv
                                        .byte $00, $00   ; 33 rezerv
                                        .byte $00, $00   ; 34 rezerv
                                        .byte $00, $00   ; 35 rezerv
                                        .byte $00, $00   ; 36 rezerv
                                        .byte $00, $00   ; 37 rezerv
                                        .byte $00, $00   ; 38 rezerv
                                        .byte $00, $00   ; 39 rezerv
                                        .byte $00, $00   ; 3A rezerv
                                        .byte $00, $00   ; 3B rezerv
                                        .byte $00, $00   ; 3C rezerv
                                        .byte $00, $00   ; 3D rezerv
                                        .byte $00, $00   ; 3E rezerv



_off013_B6B0_06_shred:
_off013_B6B0_0D:
- D 1 - I - 0x02F6C0 0B:B6B0: 0B        .byte $0B, $0B   ; 00
- - - - - - 0x02F6C2 0B:B6B2: 0B        .byte $0B, $0B   ; 01
- - - - - - 0x02F6C4 0B:B6B4: 0B        .byte $0B, $0B   ; 02
- D 1 - I - 0x02F6C6 0B:B6B6: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x02F6C8 0B:B6B8: 0B        .byte $0B, $0B   ; 04
- D 1 - I - 0x02F6CA 0B:B6BA: 0B        .byte $0B, $0B   ; 05
- D 1 - I - 0x02F6CC 0B:B6BC: 0B        .byte $0B, $0B   ; 06
- - - - - - 0x02F6CE 0B:B6BE: 0C        .byte $0C, $0F   ; 07
- D 1 - I - 0x02F6D0 0B:B6C0: 0C        .byte $0C, $10   ; 08
- - - - - - 0x02F6D2 0B:B6C2: 0B        .byte $0B, $0B   ; 09
- - - - - - 0x02F6D4 0B:B6C4: 0C        .byte $0C, $0F   ; 0A
- - - - - - 0x02F6D6 0B:B6C6: 0C        .byte $0C, $0D   ; 0B
- - - - - - 0x02F6D8 0B:B6C8: 0B        .byte $0B, $0B   ; 0C
- D 1 - I - 0x02F6DA 0B:B6CA: 0C        .byte $0C, $0F   ; 0D
- - - - - - 0x02F6DC 0B:B6CC: 0B        .byte $0B, $0B   ; 0E
- - - - - - 0x02F6DE 0B:B6CE: 0C        .byte $0C, $0C   ; 0F
- - - - - - 0x02F6E0 0B:B6D0: 0B        .byte $0B, $0B   ; 10
- - - - - - 0x02F6E2 0B:B6D2: 0C        .byte $0C, $0C   ; 11
- - - - - - 0x02F6E4 0B:B6D4: 0C        .byte $0C, $0C   ; 12
- - - - - - 0x02F6E6 0B:B6D6: 0B        .byte $0B, $0B   ; 13
- - - - - - 0x02F6E8 0B:B6D8: 0C        .byte $0C, $0F   ; 14
- - - - - - 0x02F6EA 0B:B6DA: 0C        .byte $0C, $0E   ; 15
- - - - - - 0x02F6EC 0B:B6DC: 0B        .byte $0B, $0B   ; 16
- - - - - - 0x02F6EE 0B:B6DE: 0C        .byte $0C, $0F   ; 17
- - - - - - 0x02F6F0 0B:B6E0: 0C        .byte $0C, $0C   ; 18
- - - - - - 0x02F6F2 0B:B6E2: 0C        .byte $0C, $0F   ; 19
- - - - - - 0x02F6F4 0B:B6E4: 0C        .byte $0C, $0F   ; 1A
- - - - - - 0x02F6F6 0B:B6E6: 0C        .byte $0C, $0C   ; 1B
- - - - - - 0x02F6F8 0B:B6E8: 0C        .byte $0C, $0F   ; 1C
- - - - - - 0x02F6FA 0B:B6EA: 0C        .byte $0C, $10   ; 1D
- - - - - - 0x02F6FC 0B:B6EC: 0C        .byte $0C, $10   ; 1E
- - - - - - 0x02F6FE 0B:B6EE: 0C        .byte $0C, $0F   ; 1F
- - - - - - 0x02F700 0B:B6F0: 0C        .byte $0C, $10   ; 20
- - - - - - 0x02F702 0B:B6F2: 0C        .byte $0C, $0F   ; 21
- - - - - - 0x02F704 0B:B6F4: 0C        .byte $0C, $0F   ; 22
- - - - - - 0x02F706 0B:B6F6: 0B        .byte $0B, $0B   ; 23
- - - - - - 0x02F708 0B:B6F8: 0B        .byte $0B, $0B   ; 24
- - - - - - 0x02F70A 0B:B6FA: 0C        .byte $0C, $0F   ; 25
- - - - - - 0x02F70C 0B:B6FC: 0C        .byte $0C, $0C   ; 26
- - - - - - 0x02F70E 0B:B6FE: 0C        .byte $0C, $0E   ; 27
- - - - - - 0x02F710 0B:B700: 0B        .byte $0B, $0B   ; 28
- - - - - - 0x02F712 0B:B702: 0C        .byte $0C, $0C   ; 29
- - - - - - 0x02F714 0B:B704: 0C        .byte $0C, $10   ; 2A
- - - - - - 0x02F716 0B:B706: 0C        .byte $0C, $0E   ; 2B
- - - - - - 0x02F718 0B:B708: 0B        .byte $0B, $0B   ; 2C
- - - - - - 0x02F71A 0B:B70A: 0C        .byte $0C, $0F   ; 2D
- - - - - - 0x02F71C 0B:B70C: FF        .byte $0C, $0C   ; 2E
- - - - - - 0x02F71E 0B:B70E: FF        .byte $00, $00   ; 30 rezerv
                                        .byte $00, $00   ; 31 rezerv
                                        .byte $00, $00   ; 32 rezerv
                                        .byte $00, $00   ; 33 rezerv
                                        .byte $00, $00   ; 34 rezerv
                                        .byte $00, $00   ; 35 rezerv
                                        .byte $00, $00   ; 36 rezerv
                                        .byte $00, $00   ; 37 rezerv
                                        .byte $00, $00   ; 38 rezerv
                                        .byte $00, $00   ; 39 rezerv
                                        .byte $00, $00   ; 3A rezerv
                                        .byte $00, $00   ; 3B rezerv
                                        .byte $00, $00   ; 3C rezerv
                                        .byte $00, $00   ; 3D rezerv
                                        .byte $00, $00   ; 3E rezerv



ofs_0x02F73B_суперка_casey_песок:
C - - - - - 0x02F73B 0B:B72B: BD 40 05  LDA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02F73E 0B:B72E: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x02F741 0B:B731: 3D B7     .word ofs_суперка_casey_песок_B73D_00
- D 1 - I - 0x02F743 0B:B733: 50 B7     .word ofs_суперка_casey_песок_B750_01
- D 1 - I - 0x02F745 0B:B735: 71 B7     .word ofs_суперка_casey_песок_B771_02
- D 1 - I - 0x02F747 0B:B737: A3 B7     .word ofs_суперка_casey_песок_B7A3_03
- D 1 - I - 0x02F749 0B:B739: 09 B8     .word ofs_суперка_casey_песок_B809_04
- D 1 - I - 0x02F74B 0B:B73B: 4E B8     .word ofs_суперка_casey_песок_B84E_05



ofs_суперка_casey_песок_B73D_00:
C - - J - - 0x02F74D 0B:B73D: A9 0C     LDA #$0C
loc_B73F:
C D 1 - - - 0x02F74F 0B:B73F: 20 0E E1  JSR sub_0x03E11E_корректировка_значения_A_для_turbo
C - - - - - 0x02F752 0B:B742: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02F755 0B:B745: A9 A2     LDA #$A2
C - - - - - 0x02F757 0B:B747: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x02F75A 0B:B74A: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
bra_B74D:
C - - - - - 0x02F75D 0B:B74D: 4C 17 F6  JMP loc_0x03F627_restore_prg



ofs_суперка_casey_песок_B750_01:
C - - J - - 0x02F760 0B:B750: DE 60 05  DEC ram_obj_timer,X ; 0560 0561 
C - - - - - 0x02F763 0B:B753: D0 F8     BNE bra_B74D
C - - - - - 0x02F765 0B:B755: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02F768 0B:B758: A9 56     LDA #con_dpcm_warcry_casey_2
C - - - - - 0x02F76A 0B:B75A: 20 94 F6  JSR sub_0x03F6A4_записать_звук
C - - - - - 0x02F76D 0B:B75D: A9 F9     LDA #$F9
C - - - - - 0x02F76F 0B:B75F: AC 26 01  LDY ram_option_speed
C - - - - - 0x02F772 0B:B762: F0 02     BEQ bra_B766
C - - - - - 0x02F774 0B:B764: A9 F6     LDA #$F6
bra_B766:
C - - - - - 0x02F776 0B:B766: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 
loc_B769:
C D 1 - - - 0x02F779 0B:B769: A9 41     LDA #$41
C - - - - - 0x02F77B 0B:B76B: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02F77E 0B:B76E: 4C 17 F6  JMP loc_0x03F627_restore_prg



ofs_суперка_casey_песок_B771_02:
C - - J - - 0x02F781 0B:B771: BC 10 04  LDY ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02F784 0B:B774: C0 68     CPY #$68
C - - - - - 0x02F786 0B:B776: 90 19     BCC bra_B791
C - - - - - 0x02F788 0B:B778: A9 A1     LDA #$A1
C - - - - - 0x02F78A 0B:B77A: C0 80     CPY #$80
C - - - - - 0x02F78C 0B:B77C: B0 05     BCS bra_B783
C - - - - - 0x02F78E 0B:B77E: 20 68 B8  JSR sub_B868
C - - - - - 0x02F791 0B:B781: A9 D6     LDA #$D6
bra_B783:
C - - - - - 0x02F793 0B:B783: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x02F796 0B:B786: A9 48     LDA #$48
C - - - - - 0x02F798 0B:B788: 20 4C E1  JSR sub_0x03E15C
C - - - - - 0x02F79B 0B:B78B: 20 58 DC  JSR sub_0x03DC68_добавить_A_00_к_spd_Z
C - - - - - 0x02F79E 0B:B78E: 4C 69 B7  JMP loc_B769
bra_B791:
C - - - - - 0x02F7A1 0B:B791: 20 65 B8  JSR sub_B865
C - - - - - 0x02F7A4 0B:B794: 20 73 D0  JSR sub_0x03D083_очистить_spd_Z
C - - - - - 0x02F7A7 0B:B797: BD 54 05  LDA ram_obj_id + $04,X ; 0554 0555 
C - - - - - 0x02F7AA 0B:B79A: C9 39     CMP #con_0552_special_casey_песок
C - - - - - 0x02F7AC 0B:B79C: F0 5E     BEQ bra_B7FC
C - - - - - 0x02F7AE 0B:B79E: A9 06     LDA #$06
C - - - - - 0x02F7B0 0B:B7A0: 4C 48 B8  JMP loc_B848



ofs_суперка_casey_песок_B7A3_03:
C - - J - - 0x02F7B3 0B:B7A3: A9 C0     LDA #$C0
C - - - - - 0x02F7B5 0B:B7A5: BC A0 04  LDY ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02F7B8 0B:B7A8: 10 02     BPL bra_B7AC
C - - - - - 0x02F7BA 0B:B7AA: A9 90     LDA #$90
bra_B7AC:
C - - - - - 0x02F7BC 0B:B7AC: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02F7BF 0B:B7AF: A0 0D     LDY #con_DFE6_0D
C - - - - - 0x02F7C1 0B:B7B1: AD 26 01  LDA ram_option_speed
C - - - - - 0x02F7C4 0B:B7B4: 85 02     STA ram_0002
C - - - - - 0x02F7C6 0B:B7B6: BD A0 04  LDA ram_obj_spd_Y_hi,X ; 04A0 04A1 
C - - - - - 0x02F7C9 0B:B7B9: 10 03     BPL bra_B7BE
C - - - - - 0x02F7CB 0B:B7BB: A9 00     LDA #$00
C - - - - - 0x02F7CD 0B:B7BD: 2C        .byte $2C   ; BIT
bra_B7BE:
C - - - - - 0x02F7CE 0B:B7BE: A9 01     LDA #$01
C - - - - - 0x02F7D0 0B:B7C0: 8D 26 01  STA ram_option_speed
C - - - - - 0x02F7D3 0B:B7C3: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02F7D6 0B:B7C6: A5 02     LDA ram_0002
C - - - - - 0x02F7D8 0B:B7C8: 8D 26 01  STA ram_option_speed
C - - - - - 0x02F7DB 0B:B7CB: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x02F7DE 0B:B7CE: 30 2C     BMI bra_B7FC
C - - - - - 0x02F7E0 0B:B7D0: D0 0C     BNE bra_B7DE
C - - - - - 0x02F7E2 0B:B7D2: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02F7E5 0B:B7D5: C9 04     CMP #$04
C - - - - - 0x02F7E7 0B:B7D7: D0 05     BNE bra_B7DE
C - - - - - 0x02F7E9 0B:B7D9: A9 39     LDA #con_0552_special_casey_песок
C - - - - - 0x02F7EB 0B:B7DB: 20 00 B9  JSR sub_B900
bra_B7DE:
C - - - - - 0x02F7EE 0B:B7DE: BC D0 05  LDY ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x02F7F1 0B:B7E1: B9 3C B8  LDA tbl_B83C,Y
C - - - - - 0x02F7F4 0B:B7E4: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x02F7F7 0B:B7E7: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x02F7FA 0B:B7EA: 9D 4C 04  STA ram_obj_pos_X_lo + $0C,X ; 044C 044D 
C - - - - - 0x02F7FD 0B:B7ED: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02F800 0B:B7F0: 9D 1C 04  STA ram_obj_pos_Y_lo + $0C,X ; 041C 041D 
C - - - - - 0x02F803 0B:B7F3: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02F806 0B:B7F6: 9D 1C 05  STA ram_obj_flip + $0C,X ; 051C 051D 
bra_B7F9:
C - - - - - 0x02F809 0B:B7F9: 4C 17 F6  JMP loc_0x03F627_restore_prg
bra_B7FC:
C - - - - - 0x02F80C 0B:B7FC: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x02F80F 0B:B7FF: A9 00     LDA #$00
C - - - - - 0x02F811 0B:B801: 9D 0C 04  STA ram_obj_anim_id + $0C,X ; 040C 040D 
C - - - - - 0x02F814 0B:B804: A9 03     LDA #$03
C - - - - - 0x02F816 0B:B806: 4C 48 B8  JMP loc_B848



ofs_суперка_casey_песок_B809_04:
C - - J - - 0x02F819 0B:B809: A9 48     LDA #$48
C - - - - - 0x02F81B 0B:B80B: 20 4C E1  JSR sub_0x03E15C
C - - - - - 0x02F81E 0B:B80E: 20 58 DC  JSR sub_0x03DC68_добавить_A_00_к_spd_Z
C - - - - - 0x02F821 0B:B811: A9 41     LDA #$41
C - - - - - 0x02F823 0B:B813: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02F826 0B:B816: A0 12     LDY #con_DFE6_12
C - - - - - 0x02F828 0B:B818: 20 4F DF  JSR sub_0x03DF5F
C - - - - - 0x02F82B 0B:B81B: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x02F82E 0B:B81E: 30 D9     BMI bra_B7F9
C - - - - - 0x02F830 0B:B820: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x02F833 0B:B823: C9 B0     CMP #con_координата_пола
C - - - - - 0x02F835 0B:B825: 90 D2     BCC bra_B7F9
C - - - - - 0x02F837 0B:B827: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x02F83A 0B:B82A: A9 10     LDA #$10
C - - - - - 0x02F83C 0B:B82C: 4C 3F B7  JMP loc_B73F



tbl_B83C:
- D 1 - - - 0x02F84C 0B:B83C: C7        .byte $C7   ; 00
- D 1 - - - 0x02F84D 0B:B83D: C6        .byte $C6   ; 01
- D 1 - - - 0x02F84E 0B:B83E: C5        .byte $C5   ; 02
- D 1 - - - 0x02F84F 0B:B83F: C7        .byte $C7   ; 03
- D 1 - - - 0x02F850 0B:B840: C6        .byte $C6   ; 04
- D 1 - - - 0x02F851 0B:B841: C5        .byte $C5   ; 05



loc_B848:
C D 1 - - - 0x02F858 0B:B848: 20 38 DF  JSR sub_0x03DF48
C - - - - - 0x02F85B 0B:B84B: 4C 17 F6  JMP loc_0x03F627_restore_prg



ofs_суперка_casey_песок_B84E_05:
C - - J - - 0x02F85E 0B:B84E: A9 B8     LDA #> (ofs_0x0278CB_суперка_casey_песок_финальная_стадия - $01)
C - - - - - 0x02F860 0B:B850: 48        PHA
C - - - - - 0x02F861 0B:B851: A9 BA     LDA #< (ofs_0x0278CB_суперка_casey_песок_финальная_стадия - $01)
C - - - - - 0x02F863 0B:B853: 48        PHA
C - - - - - 0x02F864 0B:B854: 4C 17 F6  JMP loc_0x03F627_restore_prg



sub_B865:
C - - - - - 0x02F875 0B:B865: FE 40 05  INC ram_obj_state_lo,X ; 0540 0541 
sub_B868:
C - - - - - 0x02F878 0B:B868: B5 91     LDA ram_btn_hold,X
                                        ORA ram_btn_press,X
                                        BPL bra_B871_RTS
; запись в этот адрес означает выполнение длинного песка
C - - - - - 0x02F87E 0B:B86E: 9D A0 04  STA ram_obj_spd_Y_hi,X ; 04A0 04A1 
bra_B871_RTS:
C - - - - - 0x02F881 0B:B871: 60        RTS



sub_B900:
C - - - - - 0x02F910 0B:B900: 48        PHA
C - - - - - 0x02F911 0B:B901: 20 13 B9  JSR sub_B913
C - - - - - 0x02F914 0B:B904: 68        PLA
C - - - - - 0x02F915 0B:B905: 99 50 05  STA ram_obj_id,Y ; 0554 0555 
C - - - - - 0x02F918 0B:B908: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x02F91B 0B:B90B: 99 10 05  STA ram_obj_flip,Y ; 0514 0515 
C - - - - - 0x02F91E 0B:B90E: 8A        TXA
C - - - - - 0x02F91F 0B:B90F: 99 20 05  STA ram_obj_state_hi,Y ; 0524 0525 
C - - - - - 0x02F922 0B:B912: 60        RTS



sub_B913:
C - - - - - 0x02F923 0B:B913: 20 20 DE  JSR sub_0x03DE30_удалить_объекты_перса
C - - - - - 0x02F926 0B:B916: 8A        TXA
C - - - - - 0x02F927 0B:B917: 29 01     AND #$01
C - - - - - 0x02F929 0B:B919: 18        CLC
C - - - - - 0x02F92A 0B:B91A: 69 04     ADC #$04
C - - - - - 0x02F92C 0B:B91C: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x02F92F 0B:B91F: A8        TAY
C - - - - - 0x02F930 0B:B920: 60        RTS



sub_BBB5_перетасовка_персов_для_losermix:
; con_новые_персы
; проверяем возможность перетасовки
C - - - - - 0x02FBC5 0B:BBB5: AC 2C 01  LDY ram_option_team_keeps
C - - - - - 0x02FBC8 0B:BBB8: C0 02     CPY #$02
C - - - - - 0x02FBCA 0B:BBBA: D0 39     BNE bra_BBF5
- - - - - - 0x02FBCC 0B:BBBC: AC 50 01  LDY ram_номер_боя_vs_team_и_переключатель
- - - - - - 0x02FBCF 0B:BBBF: F0 34     BEQ bra_BBF5
- - - - - - 0x02FBD1 0B:BBC1: BC 49 06  LDY ram_plr_колво_побед_в_раундах,X ; 0649 064A 
- - - - - - 0x02FBD4 0B:BBC4: C0 02     CPY #$02
- - - - - - 0x02FBD6 0B:BBC6: F0 2D     BEQ bra_BBF5
; старт перетасовки
- - - - - - 0x02FBD8 0B:BBC8: 85 01     STA ram_0001
- - - - - - 0x02FBDA 0B:BBCA: 8A        TXA
- - - - - - 0x02FBDB 0B:BBCB: 0A        ASL
- - - - - - 0x02FBDC 0B:BBCC: 0A        ASL
- - - - - - 0x02FBDD 0B:BBCD: 0A        ASL
- - - - - - 0x02FBDE 0B:BBCE: 85 03     STA ram_0003
- - - - - - 0x02FBE0 0B:BBD0: 1D 42 01  ORA ram_plr_колво_побед_в_vs_team,X
- - - - - - 0x02FBE3 0B:BBD3: 85 00     STA ram_0000
- - - - - - 0x02FBE5 0B:BBD5: BD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team,X
- - - - - - 0x02FBE8 0B:BBD8: FD 42 01  SBC ram_plr_колво_побед_в_vs_team,X
- - - - - - 0x02FBEB 0B:BBDB: 25 22     AND ram_счетчик_кадров
- - - - - - 0x02FBED 0B:BBDD: 18        CLC
- - - - - - 0x02FBEE 0B:BBDE: 7D 42 01  ADC ram_plr_колво_побед_в_vs_team,X
- - - - - - 0x02FBF1 0B:BBE1: 65 03     ADC ram_0003
- - - - - - 0x02FBF3 0B:BBE3: A8        TAY
- - - - - - 0x02FBF4 0B:BBE4: B9 30 01  LDA ram_0130,Y
- - - - - - 0x02FBF7 0B:BBE7: 85 02     STA ram_0002
- - - - - - 0x02FBF9 0B:BBE9: A5 01     LDA ram_0001
- - - - - - 0x02FBFB 0B:BBEB: 99 30 01  STA ram_0130,Y
- - - - - - 0x02FBFE 0B:BBEE: A4 00     LDY ram_0000
- - - - - - 0x02FC00 0B:BBF0: A5 02     LDA ram_0002
- - - - - - 0x02FC02 0B:BBF2: 99 30 01  STA ram_0130,Y
bra_BBF5:
                                        TAY
                                        AND #$7F
C - - - - - 0x02FC05 0B:BBF5: 60        RTS



loc_0x02FC90:
C D 1 - - - 0x02FC90 0B:BC80: A5 2C     LDA ram_game_mode
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x02FC92 0B:BC82: C9 03     CMP #$03
C - - - - - 0x02FC94 0B:BC84: F0 06     BEQ bra_BC8C
; con_gm_tournament
C - - - - - 0x02FC96 0B:BC86: AE 54 01  LDX ram_0154
C - - - - - 0x02FC99 0B:BC89: 4C 1D E6  JMP loc_0x03E62D
bra_BC8C:
; con_gm_vs_team
                                        LDY ram_переключатель_man_cpu
                                        JSR sub_BE11_запись_игрок_или_компьютер
C - - - - - 0x02FC9C 0B:BC8C: EE 50 01  INC ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x02FC9F 0B:BC8F: AC 2C 01  LDY ram_option_team_keeps
C - - - - - 0x02FCA2 0B:BC92: A5 08     LDA ram_0008
C - - - - - 0x02FCA4 0B:BC94: AA        TAX
C - - - - - 0x02FCA5 0B:BC95: C0 04     CPY #$04
C - - - - - 0x02FCA7 0B:BC97: 90 05     BCC bra_BC9E
- - - - - - 0x02FCA9 0B:BC99: 09 80     ORA #$80
- - - - - - 0x02FCAB 0B:BC9B: 0D 71 06  ORA ram_0671
bra_BC9E:
C - - - - - 0x02FCAE 0B:BC9E: 8D 4F 01  STA ram_014F
C - - - - - 0x02FCB1 0B:BCA1: C9 83     CMP #$83
C - - - - - 0x02FCB3 0B:BCA3: F0 2E     BEQ bra_BCD3
C - - - - - 0x02FCB5 0B:BCA5: FE 42 01  INC ram_plr_колво_побед_в_vs_team,X ; 0142 
C - - - - - 0x02FCB8 0B:BCA8: 90 0B     BCC bra_BCB5
- - - - - - 0x02FCBA 0B:BCAA: EE 43 01  INC ram_plr_колво_побед_в_vs_team + $01
- - - - - - 0x02FCBD 0B:BCAD: AD 43 01  LDA ram_plr_колво_побед_в_vs_team + $01
- - - - - - 0x02FCC0 0B:BCB0: CD 40 01  CMP ram_plr_колво_персов_в_цепочке_vs_team
- - - - - - 0x02FCC3 0B:BCB3: B0 21     BCS bra_BCD6
bra_BCB5:
C - - - - - 0x02FCC5 0B:BCB5: 8A        TXA
C - - - - - 0x02FCC6 0B:BCB6: C0 01     CPY #$01
C - - - - - 0x02FCC8 0B:BCB8: F0 06     BEQ bra_BCC0
- - - - - - 0x02FCCA 0B:BCBA: C0 02     CPY #$02
- - - - - - 0x02FCCC 0B:BCBC: F0 02     BEQ bra_BCC0
- - - - - - 0x02FCCE 0B:BCBE: 49 01     EOR #$01
bra_BCC0:
C - - - - - 0x02FCD0 0B:BCC0: A8        TAY
C - - - - - 0x02FCD1 0B:BCC1: BD 42 01  LDA ram_plr_колво_побед_в_vs_team,X ; 0142 
C - - - - - 0x02FCD4 0B:BCC4: B0 08     BCS bra_BCCE
- - - - - - 0x02FCD6 0B:BCC6: AD 50 01  LDA ram_номер_боя_vs_team_и_переключатель
- - - - - - 0x02FCD9 0B:BCC9: DD 40 01  CMP ram_plr_колво_персов_в_цепочке_vs_team,X
- - - - - - 0x02FCDC 0B:BCCC: B0 11     BCS bra_BCDF
bra_BCCE:
C - - - - - 0x02FCDE 0B:BCCE: D9 40 01  CMP ram_plr_колво_персов_в_цепочке_vs_team,Y ; 0140 
C - - - - - 0x02FCE1 0B:BCD1: B0 0C     BCS bra_BCDF
bra_BCD3:
C - - - - - 0x02FCE3 0B:BCD3: 4C 6C E6  JMP loc_0x03E67C
bra_BCD6:
- - - - - - 0x02FCE6 0B:BCD6: E8        INX
- - - - - - 0x02FCE7 0B:BCD7: AD 42 01  LDA ram_plr_колво_побед_в_vs_team
- - - - - - 0x02FCEA 0B:BCDA: CD 41 01  CMP ram_plr_колво_персов_в_цепочке_vs_team + $01
- - - - - - 0x02FCED 0B:BCDD: B0 25     BCS bra_BD04
bra_BCDF:
C - - - - - 0x02FCEF 0B:BCDF: AD 2C 01  LDA ram_option_team_keeps
C - - - - - 0x02FCF2 0B:BCE2: F0 10     BEQ bra_BCF4
C - - - - - 0x02FCF4 0B:BCE4: AD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team
C - - - - - 0x02FCF7 0B:BCE7: 0D 41 01  ORA ram_plr_колво_персов_в_цепочке_vs_team + $01
C - - - - - 0x02FCFA 0B:BCEA: 49 01     EOR #$01
C - - - - - 0x02FCFC 0B:BCEC: F0 06     BEQ bra_BCF4
C - - - - - 0x02FCFE 0B:BCEE: 8E 71 06  STX ram_0671
C - - - - - 0x02FD01 0B:BCF1: 4C 8A E6  JMP loc_0x03E69A
bra_BCF4:
- - - - - - 0x02FD04 0B:BCF4: AD 42 01  LDA ram_plr_колво_побед_в_vs_team
- - - - - - 0x02FD07 0B:BCF7: CD 43 01  CMP ram_plr_колво_побед_в_vs_team + $01
- - - - - - 0x02FD0A 0B:BCFA: F0 08     BEQ bra_BD04
- - - - - - 0x02FD0C 0B:BCFC: 90 03     BCC bra_BD01
- - - - - - 0x02FD0E 0B:BCFE: A2 00     LDX #$00
- - - - - - 0x02FD10 0B:BD00: 2C        .byte $2C   ; BIT
bra_BD01:
- - - - - - 0x02FD11 0B:BD01: A2 01     LDX #$01
- - - - - - 0x02FD13 0B:BD03: 2C        .byte $2C   ; BIT
bra_BD04:
- - - - - - 0x02FD14 0B:BD04: A2 80     LDX #$80
- - - - - - 0x02FD16 0B:BD06: 86 08     STX ram_0008
- - - - - - 0x02FD18 0B:BD08: A9 00     LDA #$00
- - - - - - 0x02FD1A 0B:BD0A: A2 20     LDX #$20
bra_BD0C_loop:
- - - - - - 0x02FD1C 0B:BD0C: 9D 30 01  STA ram_0130,X
- - - - - - 0x02FD1F 0B:BD0F: CA        DEX
- - - - - - 0x02FD20 0B:BD10: 10 FA     BPL bra_BD0C_loop
- - - - - - 0x02FD22 0B:BD12: 4C 0C E6  JMP loc_0x03E61C



sub_0x02FD40_отрисовать_колво_побед_в_матчах:
C - - - - - 0x02FD40 0B:BD30: A5 2C     LDA ram_game_mode
; con_gm_vs_player
; con_gm_vs_team
C - - - - - 0x02FD42 0B:BD32: 4A        LSR
C - - - - - 0x02FD43 0B:BD33: F0 03     BEQ bra_BD38
C - - - - - 0x02FD45 0B:BD35: 4C A0 BE  JMP loc_BEA0
bra_BD38:
; if con_gm_vs_player
C - - - - - 0x02FD48 0B:BD38: A4 00     LDY ram_0000
C - - - - - 0x02FD4A 0B:BD3A: B9 29 01  LDA ram_plr_колво_побед_в_матчах,Y ; 0129 012A 
C - - - - - 0x02FD4D 0B:BD3D: 29 F0     AND #$F0
C - - - - - 0x02FD4F 0B:BD3F: 4A        LSR
C - - - - - 0x02FD50 0B:BD40: 4A        LSR
C - - - - - 0x02FD51 0B:BD41: 4A        LSR
C - - - - - 0x02FD52 0B:BD42: 4A        LSR
C - - - - - 0x02FD53 0B:BD43: 18        CLC
C - - - - - 0x02FD54 0B:BD44: 69 81     ADC #$81
C - - - - - 0x02FD56 0B:BD46: 20 66 D2  JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x02FD59 0B:BD49: B9 29 01  LDA ram_plr_колво_побед_в_матчах,Y ; 0129 012A 
C - - - - - 0x02FD5C 0B:BD4C: 29 0F     AND #$0F
C - - - - - 0x02FD5E 0B:BD4E: 18        CLC
C - - - - - 0x02FD5F 0B:BD4F: 69 81     ADC #$81
C - - - - - 0x02FD61 0B:BD51: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02FD64 0B:BD54: 98        TYA
C - - - - - 0x02FD65 0B:BD55: 49 01     EOR #$01
C - - - - - 0x02FD67 0B:BD57: AA        TAX
C - - - - - 0x02FD68 0B:BD58: B9 29 01  LDA ram_plr_колво_побед_в_матчах,Y ; 0129 012A 
C - - - - - 0x02FD6B 0B:BD5B: A0 75     LDY #$75    ; тайл сердечка
C - - - - - 0x02FD6D 0B:BD5D: DD 29 01  CMP ram_plr_колво_побед_в_матчах,X ; 0129 012A 
C - - - - - 0x02FD70 0B:BD60: 4C BC BE  JMP loc_BEBC



tbl_BD74:
- D 1 - - - 0x02FD84 0B:BD74: 00        .byte $00   ; 00
- D 1 - - - 0x02FD85 0B:BD75: 00        .byte $00   ; 01
- D 1 - - - 0x02FD86 0B:BD76: 80        .byte $80   ; 02

tbl_BD77:
- D 1 - - - 0x02FD87 0B:BD77: 01        .byte $01   ; 00
- D 1 - - - 0x02FD88 0B:BD78: 81        .byte $81   ; 01
- D 1 - - - 0x02FD89 0B:BD79: 81        .byte $81   ; 02

tbl_BD7A_анимация:
- D 1 - - - 0x02FD8A 0B:BD7A: 16        .byte $16   ; 00
- D 1 - - - 0x02FD8B 0B:BD7B: 16        .byte $16   ; 01
- D 1 - - - 0x02FD8C 0B:BD7C: 59        .byte $59   ; 02

tbl_BD7D:
- D 1 - - - 0x02FD8D 0B:BD7D: 17        .byte $17   ; 00 bzk bug? сюда ссылается 0x02FF4C
- D 1 - - - 0x02FD8E 0B:BD7E: 1A        .byte $1A   ; 01
- D 1 - - - 0x02FD8F 0B:BD7F: 1A        .byte $1A   ; 02



loc_BD80:
                                       ;LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_team
C D 1 - - - 0x02FD90 0B:BD80: C9 03     CMP #$03
C - - - - - 0x02FD92 0B:BD82: D0 70     BNE bra_BDF4
; con_gm_vs_team
C - - - - - 0x02FD94 0B:BD84: AD 51 01  LDA ram_переключатель_man_cpu
C - - - - - 0x02FD97 0B:BD87: F0 06     BEQ bra_BD8F
C - - - - - 0x02FD99 0B:BD89: AD 41 01  LDA ram_plr_колво_персов_в_цепочке_vs_team + $01
C - - - - - 0x02FD9C 0B:BD8C: D0 15     BNE bra_BDA3
C - - - - - 0x02FD9E 0B:BD8E: CA        DEX
bra_BD8F:
bra_BD8F_loop:
C - - - - - 0x02FD9F 0B:BD8F: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x02FDA2 0B:BD92: F0 0C     BEQ bra_BDA0
C - - - - - 0x02FDA4 0B:BD94: 4A        LSR
C - - - - - 0x02FDA5 0B:BD95: F0 09     BEQ bra_BDA0
C - - - - - 0x02FDA7 0B:BD97: B5 8E     LDA ram_btn_press,X
C - - - - - 0x02FDA9 0B:BD99: 49 40     EOR #con_btn_B
C - - - - - 0x02FDAB 0B:BD9B: D0 03     BNE bra_BDA0
C - - - - - 0x02FDAD 0B:BD9D: 9D 30 05  STA ram_0530_obj_state,X ; 0531 
bra_BDA0:
C - - - - - 0x02FDB0 0B:BDA0: CA        DEX
C - - - - - 0x02FDB1 0B:BDA1: 10 EC     BPL bra_BD8F_loop
bra_BDA3:
                                        LDY ram_0530_obj_state + $01
                                        DEY
                                        BEQ bra_BDEC
C - - - - - 0x02FDB3 0B:BDA3: AC 30 05  LDY ram_0530_obj_state
C - - - - - 0x02FDB6 0B:BDA6: C0 04     CPY #$04
C - - - - - 0x02FDB8 0B:BDA8: B0 42     BCS bra_BDEC
C - - - - - 0x02FDBA 0B:BDAA: 88        DEY
C - - - - - 0x02FDBB 0B:BDAB: F0 3F     BEQ bra_BDEC
C - - - - - 0x02FDBD 0B:BDAD: A5 8E     LDA ram_btn_press
C - - - - - 0x02FDBF 0B:BDAF: 29 20     AND #con_btn_Select
C - - - - - 0x02FDC1 0B:BDB1: F0 39     BEQ bra_BDEC
C - - - - - 0x02FDC3 0B:BDB3: A9 01     LDA #$01
C - - - - - 0x02FDC5 0B:BDB5: 6D 51 01  ADC ram_переключатель_man_cpu
C - - - - - 0x02FDC8 0B:BDB8: C9 03     CMP #$03
C - - - - - 0x02FDCA 0B:BDBA: 90 09     BCC bra_BDC5
C - - - - - 0x02FDCC 0B:BDBC: C0 02     CPY #$02
C - - - - - 0x02FDCE 0B:BDBE: D0 03     BNE bra_BDC3
- - - - - - 0x02FDD0 0B:BDC0: CE 30 05  DEC ram_0530_obj_state
bra_BDC3:
C - - - - - 0x02FDD3 0B:BDC3: A9 00     LDA #$00
bra_BDC5:
C - - - - - 0x02FDD5 0B:BDC5: 8D 51 01  STA ram_переключатель_man_cpu
C - - - - - 0x02FDD8 0B:BDC8: A8        TAY
C - - - - - 0x02FDD9 0B:BDC9: 4A        LSR
C - - - - - 0x02FDDA 0B:BDCA: 90 03     BCC bra_BDCF
; A = 00 ?
C - - - - - 0x02FDDC 0B:BDCC: 8D 31 05  STA ram_0530_obj_state + $01
bra_BDCF:
                                        JSR sub_BE11_запись_игрок_или_компьютер
C - - - - - 0x02FDEB 0B:BDDB: B9 7A BD  LDA tbl_BD7A_анимация,Y
C - - - - - 0x02FDEE 0B:BDDE: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x02FDF1 0B:BDE1: B9 7D BD  LDA tbl_BD7D,Y
C - - - - - 0x02FDF4 0B:BDE4: 8D 01 04  STA ram_obj_anim_id + $01
C - - - - - 0x02FDF7 0B:BDE7: A9 27     LDA #con_075C_27
C - - - - - 0x02FDF9 0B:BDE9: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_BDEC:
C - - - - - 0x02FDFC 0B:BDEC: AD 51 01  LDA ram_переключатель_man_cpu
C - - - - - 0x02FDFF 0B:BDEF: F0 03     BEQ bra_BDF4
C - - - - - 0x02FE01 0B:BDF1: 4C 84 81  JMP loc_8184
bra_BDF4:
C - - - - - 0x02FE04 0B:BDF4: AD E0 04  LDA ram_04E0_obj
C - - - - - 0x02FE07 0B:BDF7: 4C 64 81  JMP loc_8164



sub_BE11_запись_игрок_или_компьютер:
C - - - - - 0x02FDDF 0B:BDCF: B9 74 BD  LDA tbl_BD74,Y
C - - - - - 0x02FDE2 0B:BDD2: 8D 55 01  STA ram_tournament_индекс_игрока
C - - - - - 0x02FDE5 0B:BDD5: B9 77 BD  LDA tbl_BD77,Y
C - - - - - 0x02FDE8 0B:BDD8: 8D 56 01  STA ram_tournament_индекс_игрока + $01
                                        RTS



loc_BE12:
; Y = ram_btn_press
C D 1 - - - 0x02FE22 0B:BE12: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02FE24 0B:BE14: C9 03     CMP #$03
C - - - - - 0x02FE26 0B:BE16: D0 39     BEQ bra_BE17_vs_team
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
                                        JMP loc_826F
bra_BE17_vs_team:
; if con_gm_vs_team
                                        JSR sub_BE18_обработчик_выбора_перса_vs_team
                                        JMP loc_9000_запись_в_буфер_имен_vs_team



sub_BE18_обработчик_выбора_перса_vs_team:
                                        LDA ram_tournament_индекс_игрока,X
                                        AND #$80
                                        STA ram_0000 ; сохраняем man или cpu для использования дальше
C - - - - - 0x02FE28 0B:BE18: 98        TYA
C - - - - - 0x02FE29 0B:BE19: 29 10     AND #con_btn_Start
C - - - - - 0x02FE2B 0B:BE1B: F0 03     BEQ bra_BE20
                                       ;LDA #$FF
- - - - - - 0x02FE2D 0B:BE1D: DE 42 01  DEC ram_plr_колво_побед_в_vs_team,X
bra_BE20:
C - - - - - 0x02FE30 0B:BE20: 98        TYA
C - - - - - 0x02FE31 0B:BE21: 29 40     AND #con_btn_B
C - - - - - 0x02FE33 0B:BE23: D0 2F     BNE bra_BE54_отмена_выбранного_перса
C - - - - - 0x02FE35 0B:BE25: BD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x02FE38 0B:BE28: C9 07     CMP #$07
C - - - - - 0x02FE3A 0B:BE2A: 90 03     BCC bra_BE2F
- - - - - - 0x02FE3C 0B:BE2C: DE 40 01  DEC ram_plr_колво_персов_в_цепочке_vs_team,X
bra_BE2F:
C - - - - - 0x02FE3F 0B:BE2F: 8A        TXA
C - - - - - 0x02FE40 0B:BE30: 0A        ASL
C - - - - - 0x02FE41 0B:BE31: 0A        ASL
C - - - - - 0x02FE42 0B:BE32: 0A        ASL
C - - - - - 0x02FE43 0B:BE33: 7D 40 01  ADC ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x02FE46 0B:BE36: A8        TAY
C - - - - - 0x02FE47 0B:BE37: FE 40 01  INC ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x02FE4A 0B:BE3A: AD 51 01  LDA ram_переключатель_man_cpu
C - - - - - 0x02FE4D 0B:BE3D: F0 04     BEQ bra_BE43
- - - - - - 0x02FE4F 0B:BE3F: A5 91     LDA ram_btn_hold
- - - - - - 0x02FE51 0B:BE41: D0 02     BNE bra_BE45
bra_BE43:
C - - - - - 0x02FE53 0B:BE43: B5 91     LDA ram_btn_hold,X
bra_BE45:
C - - - - - 0x02FE55 0B:BE45: 29 40     AND #con_btn_B
C - - - - - 0x02FE57 0B:BE47: D0 1B     BNE bra_BE64_выбор_рандомного_перса
                                       ;LDA #$FF    ; запись выбранного перса
C - - - - - 0x02FE59 0B:BE49: DE 44 01  DEC ram_0144_plr_выбор_перса_vs_team,X ; 0144 0145 
C - - - - - 0x02FE5C 0B:BE4C: B5 A2     LDA ram_plr_id,X ; 00A2 00A3 
                                        ORA ram_0000 ; суммируем с man или cpu
C - - - - - 0x02FE5E 0B:BE4E: 99 30 01  STA ram_0130,Y ; 0130 0131 0132 0133 0134 0135 0136 0138 0139 013A 013B 013C 013D 013E 
C - - - - - 0x02FE61 0B:BE51: 4C 6F 82  JMP loc_826F
bra_BE54_отмена_выбранного_перса:
C - - - - - 0x02FE64 0B:BE54: BD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x02FE67 0B:BE57: F0 0A     BEQ bra_BE63_RTS
C - - - - - 0x02FE69 0B:BE59: A9 FE     LDA #$FE    ; отмена выбранного перса
C - - - - - 0x02FE6B 0B:BE5B: 9D 44 01  STA ram_0144_plr_выбор_перса_vs_team,X ; 0144 0145 
C - - - - - 0x02FE6E 0B:BE5E: A9 0A     LDA #con_075C_0A
C - - - - - 0x02FE70 0B:BE60: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_BE63_RTS:
C - - - - - 0x02FE73 0B:BE63: 60        RTS
bra_BE64_выбор_рандомного_перса:
- - - - - - 0x02FE74 0B:BE64: 20 7C BE  JSR sub_BE7C_случайный_выбор_перса
                                        ORA ram_0000 ; суммируем с man или cpu
- - - - - - 0x02FE77 0B:BE67: 99 30 01  STA ram_0130,Y
- - - - - - 0x02FE7A 0B:BE6A: A9 FD     LDA #$FD    ; выбор рандомного перса
- - - - - - 0x02FE7C 0B:BE6C: 9D 44 01  STA ram_0144_plr_выбор_перса_vs_team,X
- - - - - - 0x02FE7F 0B:BE6F: A9 2C     LDA #$2C
- - - - - - 0x02FE81 0B:BE71: 9D A0 04  STA ram_obj_spd_Y_hi,X
- - - - - - 0x02FE84 0B:BE74: FE 30 05  INC ram_0530_obj_state,X
- - - - - - 0x02FE87 0B:BE77: A9 28     LDA #con_075C_28
- - - - - - 0x02FE89 0B:BE79: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y



sub_BE7C_случайный_выбор_перса:
- - - - - - 0x02FE8C 0B:BE7C: A5 28     LDA ram_random_1
- - - - - - 0x02FE8E 0B:BE7E: 29 07     AND #$07
- - - - - - 0x02FE90 0B:BE80: 69 FF     ADC #$FF
- - - - - - 0x02FE92 0B:BE82: 10 04     BPL bra_BE88_RTS
- - - - - - 0x02FE94 0B:BE84: A5 8C     LDA ram_random_2
- - - - - - 0x02FE96 0B:BE86: 29 06     AND #$06
bra_BE88_RTS:
                                    .if con_новые_персы <> $00
                                        BIT ram_random_1
                                        BMI bra_BE89_RTS
                                        CLC
                                        ADC #$07
bra_BE89_RTS:
                                    .endif
- - - - - - 0x02FE98 0B:BE88: 60        RTS



loc_9000_запись_в_буфер_имен_vs_team:
; перемещено из банка 18
; bzk optimize, переписать код, избавившись от промежуточного буфера 0146,X
C - - - - - 0x031016 0C:9006: A2 01     LDX #$01
bra_9008_loop:
C - - - - - 0x031018 0C:9008: BD 44 01  LDA ram_0144_plr_выбор_перса_vs_team,X ; 0144 0145 
C - - - - - 0x03101B 0C:900B: 30 06     BMI bra_9013_запись_перса_в_буфер
C - - - - - 0x03101D 0C:900D: CA        DEX
C - - - - - 0x03101E 0C:900E: 10 F8     BPL bra_9008_loop
C - - - - - 0x031020 0C:9010: 4C 06 80  RTS
bra_9013_запись_перса_в_буфер:
                                        LDA ram_tournament_индекс_игрока,X
                                        LSR
                                        LSR
                                        LSR
                                        STA ram_0000
C - - - - - 0x031023 0C:9013: A9 01     LDA #con_buf_mode_01
C - - - - - 0x031025 0C:9015: 8D 46 01  STA ram_0146
C - - - - - 0x031028 0C:9018: BD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x03102B 0C:901B: 0A        ASL
C - - - - - 0x03102C 0C:901C: 0A        ASL
C - - - - - 0x03102D 0C:901D: 7D FB 8F  ADC tbl_8FFB_ppu_lo,X
C - - - - - 0x031030 0C:9020: 8D 47 01  STA ram_0147
C - - - - - 0x031033 0C:9023: BD FD 8F  LDA tbl_8FFD_ppu_hi,X
C - - - - - 0x031036 0C:9026: 8D 48 01  STA ram_0148
C - - - - - 0x031039 0C:9029: FE 44 01  INC ram_0144_plr_выбор_перса_vs_team,X ; 0144 0145 
C - - - - - 0x03103C 0C:902C: F0 13     BEQ bra_9041_FF
C - - - - - 0x03103E 0C:902E: FE 44 01  INC ram_0144_plr_выбор_перса_vs_team,X ; 0144 0145 
C - - - - - 0x031041 0C:9031: D0 07     BNE bra_903A_FD_рандомный_перс
; FE для текста "???"
C - - - - - 0x031043 0C:9033: DE 40 01  DEC ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
; con_колво_персов
                                    .if con_новые_персы = $00
C - - - - - 0x031046 0C:9036: A2 24     LDX #$24
                                    .else
                                        LDX #$24 + $1C
                                    .endif
C - - - - - 0x031048 0C:9038: D0 17     BNE bra_9051    ; jmp
bra_903A_FD_рандомный_перс:
- - - - - - 0x03104A 0C:903A: FE 44 01  INC ram_0144_plr_выбор_перса_vs_team,X
; con_колво_персов
                                    .if con_новые_персы = $00
- - - - - - 0x03104D 0C:903D: A2 20     LDX #$20
                                    .else
                                        LDX #$20 + $1C
                                    .endif
- - - - - - 0x03104F 0C:903F: D0 10     BNE bra_9051   ; jmp
bra_9041_FF:
C - - - - - 0x031051 0C:9041: 8A        TXA
C - - - - - 0x031052 0C:9042: 0A        ASL
C - - - - - 0x031053 0C:9043: 0A        ASL
C - - - - - 0x031054 0C:9044: 0A        ASL
C - - - - - 0x031055 0C:9045: 7D 40 01  ADC ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x031058 0C:9048: A8        TAY
C - - - - - 0x031059 0C:9049: B9 2F 01  LDA ram_0130 - $01,Y ; 0130 0131 0132 0133 0134 0135 0136 0138 0139 013A 013B 013C 013D 013E 
C - - - - - 0x03105C 0C:904C: 0A        ASL
C - - - - - 0x03105D 0C:904D: 0A        ASL
C - - - - - 0x03105E 0C:904E: 69 04     ADC #$04
C - - - - - 0x031060 0C:9050: AA        TAX
bra_9051:
C - - - - - 0x031061 0C:9051: A0 04     LDY #$04
bra_9053_loop:
C - - - - - 0x031063 0C:9053: BD D0 8F  LDA tbl_8FD1_имена_из_3х_букв - $01,X
                                        CMP #$FF
                                        BEQ bra_9054_end_token
; C = 0
                                        ADC ram_0000
bra_9054_end_token:
C - - - - - 0x031066 0C:9056: 99 48 01  STA ram_0149 - $01,Y ; 0149 014A 014B 014C 
C - - - - - 0x031069 0C:9059: CA        DEX
C - - - - - 0x03106A 0C:905A: 88        DEY
C - - - - - 0x03106B 0C:905B: D0 F6     BNE bra_9053_loop
; Y = 00
C - - - - - 0x03106D 0C:905D: A6 25     LDX ram_index_ppu_buffer
bra_905F_loop:
C - - - - - 0x03106F 0C:905F: B9 46 01  LDA ram_0146,Y ; 0146 0147 0148 0149 014A 014B 014C 014D 
C - - - - - 0x031072 0C:9062: 9D FF 02  STA ram_ppu_buffer,X
C - - - - - 0x031075 0C:9065: F0 A9     BEQ bra_9070    ; if найден end token
C - - - - - 0x031077 0C:9067: E8        INX
C - - - - - 0x031078 0C:9068: C8        INY
C - - - - - 0x031079 0C:9069: D0 F4     BNE bra_905F_loop    ; jmp
bra_9070:
                                        STX ram_index_ppu_buffer
                                        RTS



tbl_8FD1_имена_из_3х_букв:
- D 0 - - - 0x030FE1 0C:8FD1: C6        .byte $B8, $B4, $BB, $FF   ; 00 LEO
- D 0 - - - 0x030FE5 0C:8FD5: CC        .byte $BD, $B1, $BC, $FF   ; 01 RAP
- D 0 - - - 0x030FE9 0C:8FD9: C7        .byte $B9, $B6, $B7, $FF   ; 02 MIK
- D 0 - - - 0x030FED 0C:8FDD: BE        .byte $B3, $BB, $BA, $FF   ; 03 DON
- D 0 - - - 0x030FF1 0C:8FE1: BD        .byte $B2, $B1, $BE, $FF   ; 04 CAS
- D 0 - - - 0x030FF5 0C:8FE5: C2        .byte $B5, $BB, $BF, $FF   ; 05 HOT
- D 0 - - - 0x030FF9 0C:8FE9: CD        .byte $BE, $B5, $BD, $FF   ; 06 SHR
                                    .if con_новые_персы <> $00
                                        .byte $B8, $B4, $BB, $FF   ; 07 LEO
                                        .byte $BD, $B1, $BC, $FF   ; 08 RAP
                                        .byte $B9, $B6, $B7, $FF   ; 09 MIK
                                        .byte $B3, $BB, $BA, $FF   ; 0A DON
                                        .byte $B2, $B1, $BE, $FF   ; 0B CAS
                                        .byte $B5, $BB, $BF, $FF   ; 0C HOT
                                        .byte $BE, $B5, $BD, $FF   ; 0D SHR
                                    .endif
- - - - - - 0x030FFD 0C:8FED: CC        .byte $BD, $BA, $B3, $FF   ; 07 (0E) RND
- D 0 - - - 0x031001 0C:8FF1: A9        .byte $B0, $B0, $B0, $FF   ; 08 (0F) ???



tbl_8FFB_ppu_lo:
- D 0 - - - 0x03100B 0C:8FFB: 9E        .byte < $209E   ; 00
- D 0 - - - 0x03100C 0C:8FFC: 3E        .byte < $233E   ; 01

tbl_8FFD_ppu_hi:
- D 0 - - - 0x03100D 0C:8FFD: 20        .byte > $209E   ; 00
- D 0 - - - 0x03100E 0C:8FFE: 23        .byte > $233E   ; 01



loc_BEA0:
C D 1 - - - 0x02FEB0 0B:BEA0: A9 81     LDA #$81
C - - - - - 0x02FEB2 0B:BEA2: 20 66 D2  JSR sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x02FEB5 0B:BEA5: A4 00     LDY ram_0000
C - - - - - 0x02FEB7 0B:BEA7: B9 42 01  LDA ram_plr_колво_побед_в_vs_team,Y ; 0142 0143 
C - - - - - 0x02FEBA 0B:BEAA: 18        CLC
C - - - - - 0x02FEBB 0B:BEAB: 69 81     ADC #$81
C - - - - - 0x02FEBD 0B:BEAD: 20 5F D2  JSR sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x02FEC0 0B:BEB0: 98        TYA
C - - - - - 0x02FEC1 0B:BEB1: 49 01     EOR #$01
C - - - - - 0x02FEC3 0B:BEB3: AA        TAX
C - - - - - 0x02FEC4 0B:BEB4: B9 42 01  LDA ram_plr_колво_побед_в_vs_team,Y ; 0142 0143 
C - - - - - 0x02FEC7 0B:BEB7: A0 75     LDY #$75
C - - - - - 0x02FEC9 0B:BEB9: DD 42 01  CMP ram_plr_колво_побед_в_vs_team,X ; 0142 0143 
loc_BEBC:
C D 1 - - - 0x02FECC 0B:BEBC: F0 04     BEQ bra_BEC2
C - - - - - 0x02FECE 0B:BEBE: B0 01     BCS bra_BEC1
C - - - - - 0x02FED0 0B:BEC0: C8        INY
bra_BEC1:
C - - - - - 0x02FED1 0B:BEC1: C8        INY
bra_BEC2:
C - - - - - 0x02FED2 0B:BEC2: 98        TYA
C - - - - - 0x02FED3 0B:BEC3: 20 5D D2  JSR sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x02FED6 0B:BEC6: 4C 17 F6  JMP loc_0x03F627_restore_prg



sub_0x02FEE4:
; con_новые_персы
C - - - - - 0x02FEE4 0B:BED4: A9 00     LDA #con_fighter_leo
C - - - - - 0x02FEE6 0B:BED6: 85 A2     STA ram_plr_id
C - - - - - 0x02FEE8 0B:BED8: A0 01     LDY #con_fighter_raph
C - - - - - 0x02FEEA 0B:BEDA: 84 A3     STY ram_plr_id + $01
                                        LDY #$01
C - - - - - 0x02FEEC 0B:BEDC: 84 98     STY ram_0098_flag
C - - - - - 0x02FEEE 0B:BEDE: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x02FEF0 0B:BEE0: C0 04     CPY #$04
C - - - - - 0x02FEF2 0B:BEE2: F0 14     BEQ bra_BEF8    ; if con_gm_tournament
; A = 00
C - - - - - 0x02FEF4 0B:BEE4: A2 2D     LDX #$2D
bra_BEE6_loop:
C - - - - - 0x02FEF6 0B:BEE6: 9D 30 01  STA ram_0130,X ; 0130 0131 0132 0133 0134 0135 0136 0137 0138 0139 013A 013B 013C 013D 013E 013F 0140 0141 0142 0143 0144 0145 0146 0147 0148 0149 014A 014B 014C 014D 014E 014F 0150 0151 0152 0153 0154 0155 0156 0157 0158 0159 015A 015B 015C 015D 
C - - - - - 0x02FEF9 0B:BEE9: CA        DEX
C - - - - - 0x02FEFA 0B:BEEA: 10 FA     BPL bra_BEE6_loop
C - - - - - 0x02FEFC 0B:BEEC: C0 03     CPY #$03
C - - - - - 0x02FEFE 0B:BEEE: D0 0D     BNE bra_BEFD
C - - - - - 0x02FF00 0B:BEF0: A9 01     LDA #$01
C - - - - - 0x02FF02 0B:BEF2: 8D 06 01  STA ram_0106
C - - - - - 0x02FF05 0B:BEF5: 8D 56 01  STA ram_tournament_индекс_игрока + $01
bra_BEF8:
C - - - - - 0x02FF08 0B:BEF8: A9 FF     LDA #$FF
C - - - - - 0x02FF0A 0B:BEFA: 8D 5C 01  STA ram_tournament_индекс_игрока + $07
bra_BEFD:
C - - - - - 0x02FF0D 0B:BEFD: A2 80     LDX #$80
C - - - - - 0x02FF0F 0B:BEFF: A5 26     LDA ram_0026_flag
C - - - - - 0x02FF11 0B:BF01: F0 03     BEQ bra_BF06
C - - - - - 0x02FF13 0B:BF03: 8E 55 01  STX ram_tournament_индекс_игрока
bra_BF06:
C - - - - - 0x02FF16 0B:BF06: 98        TYA
C - - - - - 0x02FF17 0B:BF07: F0 04     BEQ bra_BF0D
C - - - - - 0x02FF19 0B:BF09: C0 02     CPY #$02
C - - - - - 0x02FF1B 0B:BF0B: D0 03     BNE bra_BF10_RTS
bra_BF0D:
C - - - - - 0x02FF1D 0B:BF0D: 8E 56 01  STX ram_tournament_индекс_игрока + $01
bra_BF10_RTS:
C - - - - - 0x02FF20 0B:BF10: 60        RTS



loc_BF2C:
C D 1 - - - 0x02FF3C 0B:BF2C: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02FF3E 0B:BF2E: C0 03     CPY #$03
C - - - - - 0x02FF40 0B:BF30: D0 0D     BNE bra_BF3F
; if con_gm_vs_team
C - - - - - 0x02FF42 0B:BF32: 8A        TXA
C - - - - - 0x02FF43 0B:BF33: F0 02     BEQ bra_BF37
C - - - - - 0x02FF45 0B:BF35: A9 03     LDA #$03
bra_BF37:
C - - - - - 0x02FF47 0B:BF37: 18        CLC
C - - - - - 0x02FF48 0B:BF38: 6D 51 01  ADC ram_переключатель_man_cpu
C - - - - - 0x02FF4B 0B:BF3B: A8        TAY
C - - - - - 0x02FF4C 0B:BF3C: B9 7A BD  LDA tbl_BD7A_анимация,Y
bra_BF3F:
C - - - - - 0x02FF4F 0B:BF3F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02FF52 0B:BF42: 60        RTS



sub_BF4C:
C - - - - - 0x02FF5C 0B:BF4C: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x02FF5E 0B:BF4E: C9 03     CMP #$03
C - - - - - 0x02FF60 0B:BF50: D0 13     BNE bra_BF65
; con_gm_vs_team
C - - - - - 0x02FF62 0B:BF52: BD 42 01  LDA ram_plr_колво_побед_в_vs_team,X ; 0142 0143 
C - - - - - 0x02FF65 0B:BF55: D0 0B     BNE bra_BF62_FF
C - - - - - 0x02FF67 0B:BF57: BD 40 01  LDA ram_plr_колво_персов_в_цепочке_vs_team,X ; 0140 0141 
C - - - - - 0x02FF6A 0B:BF5A: C9 07     CMP #$07
C - - - - - 0x02FF6C 0B:BF5C: B0 07     BCS bra_BF65
                                       ;LDA #$00
C - - - - - 0x02FF6E 0B:BF5E: DE 30 05  DEC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x02FF71 0B:BF61: 60        RTS
bra_BF62_FF:
; if была нажата start в vs team
                                       ;LDA #$00
- - - - - - 0x02FF72 0B:BF62: FE 42 01  INC ram_plr_колво_побед_в_vs_team,X
bra_BF65:
                                       ;LDA #$02
C - - - - - 0x02FF75 0B:BF65: FE 30 05  INC ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x02FF78 0B:BF68: 60        RTS



loc_0x02FF80:
; con_gm_vs_team
; con_gm_tournament
                                        LDA ram_random_1
                                        AND #$0F
C D 1 - - - 0x02FF80 0B:BF70: A8        TAY
C - - - - - 0x02FF81 0B:BF71: B9 EA BF  LDA tbl_BFEA,Y
C - - - - - 0x02FF84 0B:BF74: CD 5C 01  CMP ram_tournament_индекс_игрока + $07
C - - - - - 0x02FF87 0B:BF77: D0 02     BNE bra_BF7B
C - - - - - 0x02FF89 0B:BF79: 49 01     EOR #$01
bra_BF7B:
C - - - - - 0x02FF8B 0B:BF7B: 85 9E     STA ram_номер_боя_story
                                        LDX ram_game_mode
C - - - - - 0x02FF8D 0B:BF7D: E0 04     CPX #$04    ; con_gm_tournament
C - - - - - 0x02FF8F 0B:BF7F: D0 03     BNE bra_BF84
C - - - - - 0x02FF91 0B:BF81: 4C 19 E2  JMP loc_0x03E229_отрисовать_турнирную_сетку
bra_BF84:
C - - - - - 0x02FF94 0B:BF84: AC 50 01  LDY ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x02FF97 0B:BF87: AD 2C 01  LDA ram_option_team_keeps
C - - - - - 0x02FF9A 0B:BF8A: F0 0A     BEQ bra_BF96
C - - - - - 0x02FF9C 0B:BF8C: A2 01     LDX #$01
C - - - - - 0x02FF9E 0B:BF8E: C9 03     CMP #$03
C - - - - - 0x02FFA0 0B:BF90: B0 01     BCS bra_BF93
C - - - - - 0x02FFA2 0B:BF92: CA        DEX ; 00
bra_BF93:
C - - - - - 0x02FFA3 0B:BF93: BC 42 01  LDY ram_plr_колво_побед_в_vs_team,X ; 0142 
bra_BF96:
C - - - - - 0x02FFA6 0B:BF96: B9 30 01  LDA ram_0130,Y ; 0130 0131 0132 0133 0134 0135 0136 
C - - - - - 0x02FFA9 0B:BF99: 20 B5 BB  JSR sub_BBB5_перетасовка_персов_для_losermix
C - - - - - 0x02FFAC 0B:BF9C: 85 A2     STA ram_plr_id
                                        TYA
                                        AND #$80
                                        STA ram_tournament_индекс_игрока
C - - - - - 0x02FFAE 0B:BF9E: 8A        TXA
C - - - - - 0x02FFAF 0B:BF9F: 49 01     EOR #$01
C - - - - - 0x02FFB1 0B:BFA1: AA        TAX
C - - - - - 0x02FFB2 0B:BFA2: AC 50 01  LDY ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x02FFB5 0B:BFA5: AD 2C 01  LDA ram_option_team_keeps
C - - - - - 0x02FFB8 0B:BFA8: F0 03     BEQ bra_BFAD
C - - - - - 0x02FFBA 0B:BFAA: BC 42 01  LDY ram_plr_колво_побед_в_vs_team,X ; 0143 
bra_BFAD:
C - - - - - 0x02FFBD 0B:BFAD: B9 38 01  LDA ram_0138,Y ; 0138 
C - - - - - 0x02FFC0 0B:BFB0: 20 B5 BB  JSR sub_BBB5_перетасовка_персов_для_losermix
C - - - - - 0x02FFC3 0B:BFB3: 85 A3     STA ram_plr_id + $01
                                        TYA
                                        AND #$80
                                        ORA #$01
                                        STA ram_tournament_индекс_игрока + $01
C - - - - - 0x02FFC5 0B:BFB5: 4C 46 E2  JMP loc_0x03E256



tbl_BFEA:
- - - - - - 0x02FFFA 0B:BFEA: 00        .byte $00   ; 00
- D 1 - - - 0x02FFFB 0B:BFEB: 06        .byte $06   ; 01
- D 1 - - - 0x02FFFC 0B:BFEC: 04        .byte $04   ; 02
- D 1 - - - 0x02FFFD 0B:BFED: 07        .byte $07   ; 03
- D 1 - - - 0x02FFFE 0B:BFEE: 00        .byte $00   ; 04
- - - - - - 0x02FFFF 0B:BFEF: 07        .byte $07   ; 05
- - - - - - 0x030000 0B:BFF0: 01        .byte $01   ; 06
- - - - - - 0x030001 0B:BFF1: 06        .byte $06   ; 07
- D 1 - - - 0x030002 0B:BFF2: 01        .byte $01   ; 08
- D 1 - - - 0x030003 0B:BFF3: 04        .byte $04   ; 09
- - - - - - 0x030004 0B:BFF4: 06        .byte $06   ; 0A
- D 1 - - - 0x030005 0B:BFF5: 00        .byte $00   ; 0B
- D 1 - - - 0x030006 0B:BFF6: 04        .byte $04   ; 0C
- D 1 - - - 0x030007 0B:BFF7: 01        .byte $01   ; 0D
- - - - - - 0x030008 0B:BFF8: 07        .byte $07   ; 0E
- D 1 - - - 0x030009 0B:BFF9: 06        .byte $06   ; 0F



tbl_BFFA:
- D 1 - - - 0x03000A 0B:BFFA: 10        .byte con_screen_player_select_4   ; 00 story
- D 1 - - - 0x03000B 0B:BFFB: 10        .byte con_screen_player_select_7   ; 01 vs player
- D 1 - - - 0x03000C 0B:BFFC: 10        .byte con_screen_player_select_7   ; 02 vs cpu
- D 1 - - - 0x03000D 0B:BFFD: 3C        .byte con_screen_player_select_vs   ; 03 vs team



sub_0x025E5F_обработка_состояния_мяча:
; перемещено из банка 12
C - - - - - 0x025E5F 09:9E4F: A2 06     LDX #$06
C - - - - - 0x025E61 09:9E51: 20 49 DB  JSR sub_0x03DB59_добавить_spd_X_к_pos_X___spd_Z_к_pos_Y
C - - - - - 0x025E64 09:9E54: AD 36 05  LDA ram_0530_obj_state + $06
C - - - - - 0x025E67 09:9E57: C9 06     CMP #$06
C - - - - - 0x025E69 09:9E59: B0 1B     BCS bra_9E76
C - - - - - 0x025E6B 09:9E5B: AD 46 04  LDA ram_obj_pos_X_lo + $06
C - - - - - 0x025E6E 09:9E5E: 65 A6     ADC ram_screen_pos_X
C - - - - - 0x025E70 09:9E60: A9 00     LDA #$00
C - - - - - 0x025E72 09:9E62: 6D 36 04  ADC ram_obj_pos_X_hi + $06
C - - - - - 0x025E75 09:9E65: C9 02     CMP #$02
C - - - - - 0x025E77 09:9E67: 90 0D     BCC bra_9E76
- - - - - - 0x025E79 09:9E69: A9 AC     LDA #$AC
- - - - - - 0x025E7B 09:9E6B: 8D 16 04  STA ram_obj_pos_Y_lo + $06
- - - - - - 0x025E7E 09:9E6E: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
- - - - - - 0x025E81 09:9E71: A9 02     LDA #$02
- - - - - - 0x025E83 09:9E73: 8D 36 05  STA ram_0530_obj_state + $06
bra_9E76:
C - - - - - 0x025E86 09:9E76: AC 46 05  LDY ram_obj_state_lo + $06
C - - - - - 0x025E89 09:9E79: AD 36 05  LDA ram_0530_obj_state + $06
C - - - - - 0x025E8C 09:9E7C: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x025E8F 09:9E7F: 8D 9E     .word ofs_052_9E8D_00_подготовка_существования_мяча
- D 0 - I - 0x025E91 09:9E81: AD 9E     .word ofs_052_9EAD_01_ничейный_мяч_падает_и_отскакивает
- D 0 - I - 0x025E93 09:9E83: 0A 9F     .word ofs_052_9F0A_02_мяч_после_отскоков_лежит_на_земле_и_может_исчезнуть
- D 0 - I - 0x025E95 09:9E85: 6C 9F     .word ofs_052_9F6C_03_мяч_был_подобран_персом
- D 0 - I - 0x025E97 09:9E87: A6 9F     .word ofs_052_9FA6_04_мяч_был_запущен_персом
- D 0 - I - 0x025E99 09:9E89: C3 9F     .word ofs_052_9FC3_05_мяч_попадает_в_соперника
- D 0 - I - 0x025E9B 09:9E8B: 33 A2     .word ofs_052_A233_06_мяч_не_существует



ofs_052_9E8D_00_подготовка_существования_мяча:
; 00 пишется в 0x026977
C - - J - - 0x025E9D 09:9E8D: 20 D3 DA  JSR sub_0x03DAE3_удалить_объект
C - - - - - 0x025EA0 09:9E90: A9 80     LDA #$80
C - - - - - 0x025EA2 09:9E92: 8D E6 05  STA ram_05E0_obj + $06
C - - - - - 0x025EA5 09:9E95: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x025EA8 09:9E98: 8D 56 05  STA ram_obj_id + $06
C - - - - - 0x025EAB 09:9E9B: A9 50     LDA #$50
C - - - - - 0x025EAD 09:9E9D: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x025EB0 09:9EA0: A9 02     LDA #$02
C - - - - - 0x025EB2 09:9EA2: 8D 66 04  STA ram_obj_spd_Z_hi + $06
; 00 -> 01
C - - - - - 0x025EB5 09:9EA5: EE 36 05  INC ram_0530_obj_state + $06
C - - - - - 0x025EB8 09:9EA8: A9 04     LDA #$04
loc_9EAA:
C D 0 - - - 0x025EBA 09:9EAA: 8D B6 04  STA ram_obj_spd_Y_lo + $06
ofs_052_9EAD_01_ничейный_мяч_падает_и_отскакивает:
; 01 пишется в
    ; 0x025EB5 = сплинтер бросает мяч
    ; 0x0244F5 = потеря мяча соперником
    ; 0x025FF8 = после попадания мячом по сопернику, либо промахнуться и тот ударяется в стену
C - - - - - 0x025EBD 09:9EAD: 20 2D 9F  JSR sub_9F2D
C - - - - - 0x025EC0 09:9EB0: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x025EC3 09:9EB3: A9 00     LDA #$00
C - - - - - 0x025EC5 09:9EB5: 8D A6 05  STA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x025EC8 09:9EB8: A9 03     LDA #$03
C - - - - - 0x025ECA 09:9EBA: 8D 76 05  STA ram_0570_obj + $06
C - - - - - 0x025ECD 09:9EBD: A9 01     LDA #$01
C - - - - - 0x025ECF 09:9EBF: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x025ED2 09:9EC2: AD 16 04  LDA ram_obj_pos_Y_lo + $06
C - - - - - 0x025ED5 09:9EC5: C9 AC     CMP #$AC
C - - - - - 0x025ED7 09:9EC7: B0 03     BCS bra_9ECC
C - - - - - 0x025ED9 09:9EC9: 4C A1 9F  LDA #$20
                                        JMP loc_0x03DC68_добавить_A_00_к_spd_Z
bra_9ECC:
C - - - - - 0x025EDC 09:9ECC: A9 04     LDA #$04
C - - - - - 0x025EDE 09:9ECE: CD 30 05  CMP ram_0530_obj_state
C - - - - - 0x025EE1 09:9ED1: F0 0A     BEQ bra_9EDD_этот_перс_труп
C - - - - - 0x025EE3 09:9ED3: CD 31 05  CMP ram_0530_obj_state + $01
C - - - - - 0x025EE6 09:9ED6: F0 05     BEQ bra_9EDD_этот_перс_труп
; if оба перса живые (бой еще не закончен)
C - - - - - 0x025EE8 09:9ED8: A9 0A     LDA #con_075C_0A
C - - - - - 0x025EEA 09:9EDA: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
bra_9EDD_этот_перс_труп:
C - - - - - 0x025EED 09:9EDD: A9 AC     LDA #$AC
C - - - - - 0x025EEF 09:9EDF: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x025EF2 09:9EE2: AC B6 04  LDY ram_obj_spd_Y_lo + $06
C - - - - - 0x025EF5 09:9EE5: B9 05 9F  LDA tbl_9F05_spd_Z_hi,Y
C - - - - - 0x025EF8 09:9EE8: 8D 66 04  STA ram_obj_spd_Z_hi + $06
C - - - - - 0x025EFB 09:9EEB: A9 00     LDA #$00
C - - - - - 0x025EFD 09:9EED: 8D 76 04  STA ram_obj_spd_Z_lo + $06
C - - - - - 0x025F00 09:9EF0: CE B6 04  DEC ram_obj_spd_Y_lo + $06
C - - - - - 0x025F03 09:9EF3: 10 5B     BPL bra_9F50_RTS
C - - - - - 0x025F05 09:9EF5: 20 38 DB  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x025F08 09:9EF8: A9 02     LDA #$02
C - - - - - 0x025F0A 09:9EFA: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x025F0D 09:9EFD: A9 60     LDA #$60
C - - - - - 0x025F0F 09:9EFF: 8D 66 05  STA ram_obj_timer + $06
C - - - - - 0x025F12 09:9F02: 4C 67 D0  JMP loc_0x03DB48_очистить_spd_X_и_spd_Z



tbl_9F05_spd_Z_hi:
- D 0 - - - 0x025F15 09:9F05: FE        .byte $FE   ; 00
- D 0 - - - 0x025F16 09:9F06: FE        .byte $FE   ; 01
- D 0 - - - 0x025F17 09:9F07: FD        .byte $FD   ; 02
- D 0 - - - 0x025F18 09:9F08: FC        .byte $FC   ; 03
- D 0 - - - 0x025F19 09:9F09: FB        .byte $FB   ; 04



ofs_052_9F0A_02_мяч_после_отскоков_лежит_на_земле_и_может_исчезнуть:
; 02 пишется в 0x025F0A
C - - J - - 0x025F1A 09:9F0A: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x025F1C 09:9F0C: 29 03     AND #$03
C - - - - - 0x025F1E 09:9F0E: D0 05     BNE bra_9F15
C - - - - - 0x025F20 09:9F10: CE 66 05  DEC ram_obj_timer + $06
C - - - - - 0x025F23 09:9F13: F0 3C     BEQ bra_9F51
bra_9F15:
C - - - - - 0x025F25 09:9F15: A9 00     LDA #$00
C - - - - - 0x025F27 09:9F17: 8D A6 05  STA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x025F2A 09:9F1A: 8D 86 04  STA ram_obj_spd_X_hi + $06
C - - - - - 0x025F2D 09:9F1D: 8D 96 04  STA ram_obj_spd_X_lo + $06
C - - - - - 0x025F30 09:9F20: A2 01     LDX #$01
bra_9F22_loop:
C - - - - - 0x025F32 09:9F22: 38        SEC
C - - - - - 0x025F33 09:9F23: BD 30 05  LDA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x025F36 09:9F26: E9 04     SBC #$04
C - - - - - 0x025F38 09:9F28: F0 23     BEQ bra_9F4D
C - - - - - 0x025F3A 09:9F2A: CA        DEX
C - - - - - 0x025F3B 09:9F2B: 10 F5     BPL bra_9F22_loop
sub_9F2D:
C - - - - - 0x025F3D 09:9F2D: 20 F0 9F  JSR sub_9FF0
C - - - - - 0x025F40 09:9F30: 90 0C     BCC bra_9F3E
C - - - - - 0x025F42 09:9F32: 98        TYA
C - - - - - 0x025F43 09:9F33: 10 06     BPL bra_9F3B
C - - - - - 0x025F45 09:9F35: CE 46 04  DEC ram_obj_pos_X_lo + $06
C - - - - - 0x025F48 09:9F38: CE 46 04  DEC ram_obj_pos_X_lo + $06
bra_9F3B:
C - - - - - 0x025F4B 09:9F3B: EE 46 04  INC ram_obj_pos_X_lo + $06
bra_9F3E:
C - - - - - 0x025F4E 09:9F3E: AD 66 05  LDA ram_obj_timer + $06
C - - - - - 0x025F51 09:9F41: C9 30     CMP #$30
C - - - - - 0x025F53 09:9F43: B0 06     BCS bra_9F4B
C - - - - - 0x025F55 09:9F45: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x025F57 09:9F47: 29 04     AND #$04
C - - - - - 0x025F59 09:9F49: F0 02     BEQ bra_9F4D
bra_9F4B:
C - - - - - 0x025F5B 09:9F4B: A9 01     LDA #$01
bra_9F4D:
C - - - - - 0x025F5D 09:9F4D: 8D 06 04  STA ram_obj_anim_id + $06
bra_9F50_RTS:
C - - - - - 0x025F60 09:9F50: 60        RTS
bra_9F51:
C - - - - - 0x025F61 09:9F51: A9 01     LDA #$01
C - - - - - 0x025F63 09:9F53: 8D 37 05  STA ram_0530_obj_state + $07
C - - - - - 0x025F66 09:9F56: A9 E0     LDA #$E0
C - - - - - 0x025F68 09:9F58: 8D 67 05  STA ram_0567
C - - - - - 0x025F6B 09:9F5B: A9 00     LDA #$00
C - - - - - 0x025F6D 09:9F5D: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x025F70 09:9F60: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x025F73 09:9F63: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x025F76 09:9F66: A9 06     LDA #$06
C - - - - - 0x025F78 09:9F68: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x025F7B 09:9F6B: 60        RTS



ofs_052_9F6C_03_мяч_был_подобран_персом:
; 03 пишется в 0x0244C9
C - - J - - 0x025F7C 09:9F6C: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x025F7F 09:9F6F: AD A6 05  LDA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x025F82 09:9F72: 29 01     AND #$01
C - - - - - 0x025F84 09:9F74: A8        TAY
C - - - - - 0x025F85 09:9F75: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x025F88 09:9F78: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x025F8B 09:9F7B: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x025F8E 09:9F7E: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x025F91 09:9F81: B9 10 05  LDA ram_obj_flip,Y ; 0510 0511 
C - - - - - 0x025F94 09:9F84: 8D 16 05  STA ram_obj_flip + $06
C - - - - - 0x025F97 09:9F87: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x025F9A 09:9F8A: F0 08     BEQ bra_9F94    ; if con_plr_state_на_земле
C - - - - - 0x025F9C 09:9F8C: C9 07     CMP #con_plr_state_сидит
C - - - - - 0x025F9E 09:9F8E: F0 04     BEQ bra_9F94
C - - - - - 0x025FA0 09:9F90: A9 00     LDA #$00
C - - - - - 0x025FA2 09:9F92: F0 B9     BEQ bra_9F4D    ; jmp
bra_9F94:
C - - - - - 0x025FA4 09:9F94: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x025FA6 09:9F96: 4A        LSR
C - - - - - 0x025FA7 09:9F97: 4A        LSR
C - - - - - 0x025FA8 09:9F98: 4A        LSR
C - - - - - 0x025FA9 09:9F99: 29 01     AND #$01
C - - - - - 0x025FAB 09:9F9B: F0 B0     BEQ bra_9F4D
C - - - - - 0x025FAD 09:9F9D: A9 05     LDA #$05
C - - - - - 0x025FAF 09:9F9F: D0 AC     BNE bra_9F4D    ; jmp



ofs_052_9FA6_04_мяч_был_запущен_персом:
; 04 пишется в 0x0246E9
C - - J - - 0x025FB6 09:9FA6: 20 FA DC  JSR sub_0x03DD0A
C - - - - - 0x025FB9 09:9FA9: AC 26 05  LDY ram_obj_state_hi + $06
C - - - - - 0x025FBC 09:9FAC: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
C - - - - - 0x025FBF 09:9FAF: AC 46 05  LDY ram_obj_state_lo + $06
C - - - - - 0x025FC2 09:9FB2: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 0 - I - 0x025FC5 09:9FB5: 0E A0     .word ofs_запуск_мяча_A00E_00_leo   ; con_fighter_leo
- D 0 - I - 0x025FC7 09:9FB7: 0E A0     .word ofs_запуск_мяча_A00E_01_raph   ; con_fighter_raph
- D 0 - I - 0x025FC9 09:9FB9: AC A1     .word ofs_запуск_мяча_A1AC_02_mike   ; con_fighter_mike
- D 0 - I - 0x025FCB 09:9FBB: 8C A1     .word ofs_запуск_мяча_A18C_03_don   ; con_fighter_don
- D 0 - I - 0x025FCD 09:9FBD: 65 A0     .word ofs_запуск_мяча_A065_04_casey   ; con_fighter_casey
- D 0 - I - 0x025FCF 09:9FBF: 40 A1     .word ofs_запуск_мяча_A140_05_hot   ; con_fighter_hot
- D 0 - I - 0x025FD1 09:9FC1: BD A0     .word ofs_запуск_мяча_A0BD_06_shred   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word ofs_запуск_мяча_A00E_07   ; con_fighter___leo
                                        .word ofs_запуск_мяча_A00E_08   ; con_fighter___raph
                                        .word ofs_запуск_мяча_A1AC_09   ; con_fighter___mike
                                        .word ofs_запуск_мяча_A18C_0A   ; con_fighter___don
                                        .word ofs_запуск_мяча_A065_0B   ; con_fighter___casey
                                        .word ofs_запуск_мяча_A140_0C   ; con_fighter___hot
                                        .word ofs_запуск_мяча_A0BD_0D   ; con_fighter___shred
                                    .endif



ofs_052_9FC3_05_мяч_попадает_в_соперника:
; прямое попадание или в блок
; 05 пишется в 0x0261F4
C - - J - - 0x025FD3 09:9FC3: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x025FD6 09:9FC6: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x025FD9 09:9FC9: A9 FD     LDA #$FD
C - - - - - 0x025FDB 09:9FCB: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0466 
loc_9FCE:
C D 0 - - - 0x025FDE 09:9FCE: A9 00     LDA #< $0000
C - - - - - 0x025FE0 09:9FD0: 20 D3 DC  STA ram_obj_spd_Z_lo,X ; 0476 
                                        LDA #> $0000
                                        STA ram_obj_spd_Z_hi,X ; 0466 
C - - - - - 0x025FE3 09:9FD3: A9 40     LDA #$40
loc_9FD5:   ; A = 80
C D 0 - - - 0x025FE5 09:9FD5: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x025FE8 09:9FD8: A9 00     LDA #$00
C - - - - - 0x025FEA 09:9FDA: 8D A6 05  STA ram_05A0_obj_флаги_мяча + $06
C - - - - - 0x025FED 09:9FDD: 8D B6 05  STA ram_05B0_obj_damage + $06
C - - - - - 0x025FF0 09:9FE0: 8D 06 05  STA ram_0500_obj + $06
C - - - - - 0x025FF3 09:9FE3: 20 65 DD  JSR sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x025FF6 09:9FE6: A9 01     LDA #$01
C - - - - - 0x025FF8 09:9FE8: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x025FFB 09:9FEB: A9 02     LDA #$02
C - - - - - 0x025FFD 09:9FED: 4C AA 9E  JMP loc_9EAA



sub_9FF0:
C - - - - - 0x026000 09:9FF0: 18        CLC
C - - - - - 0x026001 09:9FF1: AD 46 04  LDA ram_obj_pos_X_lo + $06
C - - - - - 0x026004 09:9FF4: 65 A6     ADC ram_screen_pos_X
C - - - - - 0x026006 09:9FF6: A8        TAY
C - - - - - 0x026007 09:9FF7: A9 00     LDA #$00
C - - - - - 0x026009 09:9FF9: 6D 36 04  ADC ram_obj_pos_X_hi + $06
C - - - - - 0x02600C 09:9FFC: 85 00     STA ram_0000
C - - - - - 0x02600E 09:9FFE: A5 00     LDA ram_0000
C - - - - - 0x026010 09:A000: D0 06     BNE bra_A008
C - - - - - 0x026012 09:A002: C0 28     CPY #$28
C D 1 - - - 0x026014 09:A004: 90 06     BCC bra_A00C
bra_A006:
C - - - - - 0x026016 09:A006: 18        CLC
C - - - - - 0x026017 09:A007: 60        RTS
bra_A008:
C - - - - - 0x026018 09:A008: C0 98     CPY #$98
C - - - - - 0x02601A 09:A00A: 90 FA     BCC bra_A006
bra_A00C:
C - - - - - 0x02601C 09:A00C: 38        SEC
C - - - - - 0x02601D 09:A00D: 60        RTS



ofs_запуск_мяча_A00E_00_leo:
ofs_запуск_мяча_A00E_07:
ofs_запуск_мяча_A00E_01_raph:
ofs_запуск_мяча_A00E_08:
C - - J - - 0x02601E 09:A00E: A9 CA     LDA #$CA
C - - - - - 0x026020 09:A010: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x026023 09:A013: AC 46 05  LDY ram_obj_state_lo + $06
C - - - - - 0x026026 09:A016: D0 36     BNE bra_A04E
C - - - - - 0x026028 09:A018: A9 01     LDA #$01
sub_A01A:
C - - - - - 0x02602A 09:A01A: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02602D 09:A01D: EE 46 05  INC ram_obj_state_lo + $06
C - - - - - 0x026030 09:A020: A9 03     LDA #$03
C - - - - - 0x026032 09:A022: 8D 76 05  STA ram_0570_obj + $06
C - - - - - 0x026035 09:A025: A9 30     LDA #$30
C - - - - - 0x026037 09:A027: 8D B6 05  STA ram_05B0_obj_damage + $06
C - - - - - 0x02603A 09:A02A: 8D 96 05  STA ram_obj_приоритет_удара + $06
C - - - - - 0x02603D 09:A02D: A9 90     LDA #$90
C - - - - - 0x02603F 09:A02F: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x026042 09:A032: A9 01     LDA #$01
C - - - - - 0x026044 09:A034: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x026047 09:A037: AD 16 05  LDA ram_obj_flip + $06
C - - - - - 0x02604A 09:A03A: 0A        ASL
C - - - - - 0x02604B 09:A03B: 0A        ASL
C - - - - - 0x02604C 09:A03C: A9 0C     LDA #$0C
C - - - - - 0x02604E 09:A03E: 90 02     BCC bra_A042
C - - - - - 0x026050 09:A040: A9 F4     LDA #$F4
bra_A042:
C - - - - - 0x026052 09:A042: 18        CLC
C - - - - - 0x026053 09:A043: 6D 46 04  ADC ram_obj_pos_X_lo + $06
C - - - - - 0x026056 09:A046: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x026059 09:A049: A9 18     LDA #con_075C_18
C - - - - - 0x02605B 09:A04B: 4C 90 F6  JMP loc_0x03F6A0_записать_звук_сохранив_X_Y
bra_A04E:
C - - - - - 0x02605E 09:A04E: A0 00     LDY #$00
C - - - - - 0x026060 09:A050: AD 16 05  LDA ram_obj_flip + $06
C - - - - - 0x026063 09:A053: 0A        ASL
C - - - - - 0x026064 09:A054: 0A        ASL
C - - - - - 0x026065 09:A055: A9 28     LDA #$28
C - - - - - 0x026067 09:A057: 90 03     BCC bra_A05C
C - - - - - 0x026069 09:A059: 88        DEY
C - - - - - 0x02606A 09:A05A: A9 D8     LDA #$D8
bra_A05C:
C - - - - - 0x02606C 09:A05C: 20 B1 DC  JSR sub_0x03DCC1_добавить_A_Y_к_spdX
C - - - - - 0x02606F 09:A05F: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x026072 09:A062: 4C DD A1  JMP loc_A1DD



ofs_запуск_мяча_A065_04_casey:
ofs_запуск_мяча_A065_0B:
C - - J - - 0x026075 09:A065: A8        TAY
C - - - - - 0x026076 09:A066: D0 1C     BNE bra_A084
C - - - - - 0x026078 09:A068: A9 83     LDA #$83
C - - - - - 0x02607A 09:A06A: 20 1A A0  JSR sub_A01A
C - - - - - 0x02607D 09:A06D: A9 88     LDA #$88
C - - - - - 0x02607F 09:A06F: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x026082 09:A072: A9 C0     LDA #$C0
C - - - - - 0x026084 09:A074: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x026087 09:A077: A9 C0     LDA #$C0
C - - - - - 0x026089 09:A079: 8D 76 04  STA ram_obj_spd_Z_lo + $06
C - - - - - 0x02608C 09:A07C: A9 40     LDA #$40
C - - - - - 0x02608E 09:A07E: 8D B6 05  STA ram_05B0_obj_damage + $06
C - - - - - 0x026091 09:A081: 8D 96 05  STA ram_obj_приоритет_удара + $06
bra_A084:
C - - - - - 0x026094 09:A084: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x026097 09:A087: AD 16 04  LDA ram_obj_pos_Y_lo + $06
C - - - - - 0x02609A 09:A08A: C9 45     CMP #$45
C - - - - - 0x02609C 09:A08C: 90 2C     BCC bra_A0BA
C - - - - - 0x02609E 09:A08E: AD 26 05  LDA ram_obj_state_hi + $06
C - - - - - 0x0260A1 09:A091: 49 01     EOR #$01
C - - - - - 0x0260A3 09:A093: A8        TAY
C - - - - - 0x0260A4 09:A094: 20 0C D2  JSR sub_0x03D21C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x0260A7 09:A097: C9 38     CMP #$38
C - - - - - 0x0260A9 09:A099: B0 13     BCS bra_A0AE
C - - - - - 0x0260AB 09:A09B: AD 66 04  LDA ram_obj_spd_Z_hi + $06
C - - - - - 0x0260AE 09:A09E: 10 09     BPL bra_A0A9
C - - - - - 0x0260B0 09:A0A0: C9 FD     CMP #$FD
C - - - - - 0x0260B2 09:A0A2: B0 05     BCS bra_A0A9
C - - - - - 0x0260B4 09:A0A4: A9 C1     LDA #$C1
C - - - - - 0x0260B6 09:A0A6: 8D 06 04  STA ram_obj_anim_id + $06
bra_A0A9:
C - - - - - 0x0260B9 09:A0A9: A9 B8     LDA #$B8
C - - - - - 0x0260BB 09:A0AB: 4C 54 DC  JMP loc_0x03DC64_добавить_A_FF_к_spd_Z
bra_A0AE:
C - - - - - 0x0260BE 09:A0AE: AD 16 04  LDA ram_obj_pos_Y_lo + $06
C - - - - - 0x0260C1 09:A0B1: C9 A0     CMP #$A0
C - - - - - 0x0260C3 09:A0B3: 90 28     BCC bra_A0DD_RTS
- - - - - - 0x0260C5 09:A0B5: A2 06     LDX #$06
- - - - - - 0x0260C7 09:A0B7: 4C 40 DB  JMP loc_0x03D083_очистить_spd_Z
bra_A0BA:
C - - - - - 0x0260CA 09:A0BA: 4C CE 9F  JMP loc_9FCE



ofs_запуск_мяча_A0BD_06_shred:
ofs_запуск_мяча_A0BD_0D:
C - - J - - 0x0260CD 09:A0BD: A8        TAY
C - - - - - 0x0260CE 09:A0BE: D0 1E     BNE bra_A0DE
C - - - - - 0x0260D0 09:A0C0: A9 03     LDA #$03
C - - - - - 0x0260D2 09:A0C2: 20 1A A0  JSR sub_A01A
C - - - - - 0x0260D5 09:A0C5: A9 84     LDA #$84
C - - - - - 0x0260D7 09:A0C7: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x0260DA 09:A0CA: A9 01     LDA #$01
C - - - - - 0x0260DC 09:A0CC: 8D A6 04  STA ram_obj_spd_Y_hi + $06
bra_A0CF:
C - - - - - 0x0260DF 09:A0CF: A9 06     LDA #$06
C - - - - - 0x0260E1 09:A0D1: 8D 66 05  STA ram_obj_timer + $06
bra_A0D4:
C - - - - - 0x0260E4 09:A0D4: AC A6 04  LDY ram_obj_spd_Y_hi + $06
C - - - - - 0x0260E7 09:A0D7: B9 3B A1  LDA tbl_A13B,Y
C - - - - - 0x0260EA 09:A0DA: 8D 06 04  STA ram_obj_anim_id + $06
bra_A0DD_RTS:
C - - - - - 0x0260ED 09:A0DD: 60        RTS
bra_A0DE:
C - - - - - 0x0260EE 09:A0DE: 88        DEY
C - - - - - 0x0260EF 09:A0DF: D0 1C     BNE bra_A0FD
C - - - - - 0x0260F1 09:A0E1: CE 66 05  DEC ram_obj_timer + $06
C - - - - - 0x0260F4 09:A0E4: D0 EE     BNE bra_A0D4
C - - - - - 0x0260F6 09:A0E6: CE A6 04  DEC ram_obj_spd_Y_hi + $06
C - - - - - 0x0260F9 09:A0E9: 10 E4     BPL bra_A0CF
C - - - - - 0x0260FB 09:A0EB: A9 C1     LDA #$C1
C - - - - - 0x0260FD 09:A0ED: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x026100 09:A0F0: A9 14     LDA #$14
C - - - - - 0x026102 09:A0F2: 8D 66 05  STA ram_obj_timer + $06
C - - - - - 0x026105 09:A0F5: A9 02     LDA #$02
C - - - - - 0x026107 09:A0F7: 8D A6 04  STA ram_obj_spd_Y_hi + $06
C - - - - - 0x02610A 09:A0FA: EE 46 05  INC ram_obj_state_lo + $06
bra_A0FD:
C - - - - - 0x02610D 09:A0FD: 88        DEY
C - - - - - 0x02610E 09:A0FE: D0 2B     BNE bra_A12B
C - - - - - 0x026110 09:A100: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x026113 09:A103: 20 D6 A1  JSR sub_A1D6    ; возможен PLA PLA
C - - - - - 0x026116 09:A106: CE A6 04  DEC ram_obj_spd_Y_hi + $06
C - - - - - 0x026119 09:A109: 10 05     BPL bra_A110
C - - - - - 0x02611B 09:A10B: A9 02     LDA #$02
C - - - - - 0x02611D 09:A10D: 8D A6 04  STA ram_obj_spd_Y_hi + $06
bra_A110:
C - - - - - 0x026120 09:A110: AC A6 04  LDY ram_obj_spd_Y_hi + $06
C - - - - - 0x026123 09:A113: B9 3D A1  LDA tbl_A13D,Y
C - - - - - 0x026126 09:A116: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x026129 09:A119: CE 66 05  DEC ram_obj_timer + $06
C - - - - - 0x02612C 09:A11C: D0 BF     BNE bra_A0DD_RTS
C - - - - - 0x02612E 09:A11E: A9 90     LDA #$90
C - - - - - 0x026130 09:A120: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x026133 09:A123: EE 46 05  INC ram_obj_state_lo + $06
C - - - - - 0x026136 09:A126: A9 01     LDA #$01
C - - - - - 0x026138 09:A128: 8D 06 04  STA ram_obj_anim_id + $06
bra_A12B:
C - - - - - 0x02613B 09:A12B: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x02613E 09:A12E: 20 D6 A1  JSR sub_A1D6    ; возможен PLA PLA
C - - - - - 0x026141 09:A131: 20 69 DC  JSR sub_0x03DC79
C - - - - - 0x026144 09:A134: 90 A7     BCC bra_A0DD_RTS
C - - - - - 0x026146 09:A136: A9 80     LDA #$80
C - - - - - 0x026148 09:A138: 4C D5 9F  JMP loc_9FD5



tbl_A13B:
- D 1 - - - 0x02614B 09:A13B: C0        .byte $C0   ; 00
- D 1 - - - 0x02614C 09:A13C: BF        .byte $BF   ; 01



tbl_A13D:
- D 1 - - - 0x02614D 09:A13D: 9C        .byte $9C   ; 00
- D 1 - - - 0x02614E 09:A13E: 90        .byte $90   ; 01
- D 1 - - - 0x02614F 09:A13F: 84        .byte $84   ; 02



ofs_запуск_мяча_A140_05_hot:
ofs_запуск_мяча_A140_0C:
C - - J - - 0x026150 09:A140: A8        TAY
C - - - - - 0x026151 09:A141: D0 1A     BNE bra_A15D
C - - - - - 0x026153 09:A143: A9 03     LDA #$03
C - - - - - 0x026155 09:A145: 20 1A A0  JSR sub_A01A
C - - - - - 0x026158 09:A148: A9 08     LDA #$08
C - - - - - 0x02615A 09:A14A: 8D 66 04  STA ram_obj_spd_Z_hi + $06
C - - - - - 0x02615D 09:A14D: AD 86 04  LDA ram_obj_spd_X_hi + $06
C - - - - - 0x026160 09:A150: 0A        ASL
C - - - - - 0x026161 09:A151: A9 18     LDA #$18
C - - - - - 0x026163 09:A153: 90 02     BCC bra_A157
C - - - - - 0x026165 09:A155: A9 E8     LDA #$E8
bra_A157:
C - - - - - 0x026167 09:A157: 6D 46 04  ADC ram_obj_pos_X_lo + $06
C - - - - - 0x02616A 09:A15A: 8D 46 04  STA ram_obj_pos_X_lo + $06
bra_A15D:
C - - - - - 0x02616D 09:A15D: A0 17     LDY #con_D0B3_мяч_хота
C - - - - - 0x02616F 09:A15F: 20 7C D0  JSR sub_0x03D08C_обработка_анимации_объекта
C - - - - - 0x026172 09:A162: 20 D6 A1  JSR sub_A1D6    ; возможен PLA PLA
C - - - - - 0x026175 09:A165: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x026178 09:A168: AD A6 04  LDA ram_obj_spd_Y_hi + $06
C - - - - - 0x02617B 09:A16B: 4A        LSR
C - - - - - 0x02617C 09:A16C: AD 16 04  LDA ram_obj_pos_Y_lo + $06
C - - - - - 0x02617F 09:A16F: 90 14     BCC bra_A185
C - - - - - 0x026181 09:A171: C9 3D     CMP #$3D
C - - - - - 0x026183 09:A173: B0 14     BCS bra_A189_RTS
bra_A175:
C - - - - - 0x026185 09:A175: EE A6 04  INC ram_obj_spd_Y_hi + $06
C - - - - - 0x026188 09:A178: AD A6 04  LDA ram_obj_spd_Y_hi + $06
C - - - - - 0x02618B 09:A17B: 29 01     AND #$01
C - - - - - 0x02618D 09:A17D: A8        TAY
C - - - - - 0x02618E 09:A17E: B9 8A A1  LDA tbl_A18A,Y
C - - - - - 0x026191 09:A181: 8D 66 04  STA ram_obj_spd_Z_hi + $06
C - - - - - 0x026194 09:A184: 60        RTS
bra_A185:
C - - - - - 0x026195 09:A185: C9 AC     CMP #$AC
C - - - - - 0x026197 09:A187: B0 EC     BCS bra_A175
bra_A189_RTS:
C - - - - - 0x026199 09:A189: 60        RTS



tbl_A18A:
- D 1 - - - 0x02619A 09:A18A: 08        .byte $08   ; 00
- D 1 - - - 0x02619B 09:A18B: F8        .byte $F8   ; 01



ofs_запуск_мяча_A18C_03_don:
ofs_запуск_мяча_A18C_0A:
C - - J - - 0x02619C 09:A18C: A8        TAY
C - - - - - 0x02619D 09:A18D: D0 16     BNE bra_A1A5
C - - - - - 0x02619F 09:A18F: A9 83     LDA #$83
C - - - - - 0x0261A1 09:A191: 20 1A A0  JSR sub_A01A
C - - - - - 0x0261A4 09:A194: AC 26 05  LDY ram_obj_state_hi + $06
C - - - - - 0x0261A7 09:A197: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 
C - - - - - 0x0261AA 09:A19A: 38        SEC
C - - - - - 0x0261AB 09:A19B: E9 18     SBC #$18
C - - - - - 0x0261AD 09:A19D: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x0261B0 09:A1A0: A9 CB     LDA #$CB
C - - - - - 0x0261B2 09:A1A2: 8D 06 04  STA ram_obj_anim_id + $06
bra_A1A5:
C - - - - - 0x0261B5 09:A1A5: 20 D6 A1  JSR sub_A1D6    ; возможен PLA PLA
C - - - - - 0x0261B8 09:A1A8: 20 C7 A1  JSR sub_A1C7    ; возможен PLA PLA
C - - - - - 0x0261BB 09:A1AB: 60        RTS



ofs_запуск_мяча_A1AC_02_mike:
ofs_запуск_мяча_A1AC_09:
C - - J - - 0x0261BC 09:A1AC: A8        TAY
C - - - - - 0x0261BD 09:A1AD: D0 F6     BNE bra_A1A5
C - - - - - 0x0261BF 09:A1AF: A9 C3     LDA #$C3
C - - - - - 0x0261C1 09:A1B1: 20 1A A0  JSR sub_A01A
C - - - - - 0x0261C4 09:A1B4: AD A6 04  LDA ram_obj_spd_Y_hi + $06
C - - - - - 0x0261C7 09:A1B7: 0A        ASL
C - - - - - 0x0261C8 09:A1B8: A9 84     LDA #$84
C - - - - - 0x0261CA 09:A1BA: 90 02     BCC bra_A1BE
C - - - - - 0x0261CC 09:A1BC: A9 A0     LDA #$A0
bra_A1BE:
C - - - - - 0x0261CE 09:A1BE: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x0261D1 09:A1C1: A9 CB     LDA #$CB
C - - - - - 0x0261D3 09:A1C3: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x0261D6 09:A1C6: 60        RTS



sub_A1C7:
C - - - - - 0x0261D7 09:A1C7: 20 E8 A1  JSR sub_A1E8
C - - - - - 0x0261DA 09:A1CA: 90 1B     BCC bra_A1E7_RTS
C - - - - - 0x0261DC 09:A1CC: 68        PLA
C - - - - - 0x0261DD 09:A1CD: 68        PLA
C - - - - - 0x0261DE 09:A1CE: A2 06     LDX #$06
C - - - - - 0x0261E0 09:A1D0: 20 67 D0  JSR sub_0x03DB48_очистить_spd_X_и_spd_Z
C - - - - - 0x0261E3 09:A1D3: 4C CE 9F  JMP loc_9FCE



sub_A1D6:
C - - - - - 0x0261E6 09:A1D6: AD F6 05  LDA ram_05F0_obj + $06
C - - - - - 0x0261E9 09:A1D9: F0 0C     BEQ bra_A1E7_RTS
C - - - - - 0x0261EB 09:A1DB: 68        PLA
C - - - - - 0x0261EC 09:A1DC: 68        PLA
loc_A1DD:
C D 1 - - - 0x0261ED 09:A1DD: AD F6 05  LDA ram_05F0_obj + $06
C - - - - - 0x0261F0 09:A1E0: F0 05     BEQ bra_A1E7_RTS
C - - - - - 0x0261F2 09:A1E2: A9 05     LDA #$05
C - - - - - 0x0261F4 09:A1E4: 8D 36 05  STA ram_0530_obj_state + $06
bra_A1E7_RTS:
C - - - - - 0x0261F7 09:A1E7: 60        RTS



sub_A1E8:
C - - - - - 0x0261F8 09:A1E8: 18        CLC
C - - - - - 0x0261F9 09:A1E9: AD 46 04  LDA ram_obj_pos_X_lo + $06
C - - - - - 0x0261FC 09:A1EC: 65 A6     ADC ram_screen_pos_X
C - - - - - 0x0261FE 09:A1EE: A8        TAY
C - - - - - 0x0261FF 09:A1EF: A9 00     LDA #$00
C - - - - - 0x026201 09:A1F1: 6D 36 04  ADC ram_obj_pos_X_hi + $06
C - - - - - 0x026204 09:A1F4: 85 00     STA ram_0000
C - - - - - 0x026206 09:A1F6: AD 86 04  LDA ram_obj_spd_X_hi + $06
C - - - - - 0x026209 09:A1F9: 10 12     BPL bra_A20D
C - - - - - 0x02620B 09:A1FB: A5 00     LDA ram_0000
C - - - - - 0x02620D 09:A1FD: 30 08     BMI bra_A207
C - - - - - 0x02620F 09:A1FF: D0 04     BNE bra_A205
C - - - - - 0x026211 09:A201: C0 19     CPY #$19
C - - - - - 0x026213 09:A203: 90 02     BCC bra_A207
bra_A205:
C - - - - - 0x026215 09:A205: 18        CLC
C - - - - - 0x026216 09:A206: 60        RTS
bra_A207:
C - - - - - 0x026217 09:A207: A9 18     LDA #$18
C - - - - - 0x026219 09:A209: A0 00     LDY #$00
C - - - - - 0x02621B 09:A20B: F0 10     BEQ bra_A21D    ; jmp
bra_A20D:
C - - - - - 0x02621D 09:A20D: A5 00     LDA ram_0000
C - - - - - 0x02621F 09:A20F: F0 F4     BEQ bra_A205
C - - - - - 0x026221 09:A211: C9 02     CMP #$02
C - - - - - 0x026223 09:A213: B0 04     BCS bra_A219
C - - - - - 0x026225 09:A215: C0 A8     CPY #$A8
C - - - - - 0x026227 09:A217: 90 EC     BCC bra_A205
bra_A219:
C - - - - - 0x026229 09:A219: A9 A8     LDA #$A8
C - - - - - 0x02622B 09:A21B: A0 01     LDY #$01
bra_A21D:
C - - - - - 0x02622D 09:A21D: 84 00     STY ram_0000
C - - - - - 0x02622F 09:A21F: 38        SEC
C - - - - - 0x026230 09:A220: E5 A6     SBC ram_screen_pos_X
C - - - - - 0x026232 09:A222: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x026235 09:A225: A5 00     LDA ram_0000
C - - - - - 0x026237 09:A227: E9 00     SBC #$00
C - - - - - 0x026239 09:A229: 8D 36 04  STA ram_obj_pos_X_hi + $06
C - - - - - 0x02623C 09:A22C: A2 06     LDX #$06
C - - - - - 0x02623E 09:A22E: 20 3C DB  JSR sub_0x03DB4C_очистить_spd_X
C - - - - - 0x026241 09:A231: 38        SEC
C - - - - - 0x026242 09:A232: 60        RTS



ofs_052_A233_06_мяч_не_существует:
; 06 пишется в 0x03E489 до начала боя или в 0x025F78 после исчезновения по таймеру
C - - J - - 0x026243 09:A233: A9 00     LDA #$00
C - - - - - 0x026245 09:A235: 8D 46 04  STA ram_obj_pos_X_lo + $06
C - - - - - 0x026248 09:A238: 8D 16 04  STA ram_obj_pos_Y_lo + $06
C - - - - - 0x02624B 09:A23B: 8D 06 04  STA ram_obj_anim_id + $06
C - - - - - 0x02624E 09:A23E: 60        RTS



sub_0x0268BB_обработчик_состояния_летящего_сплинтера:
; перемещено из банка 12
; bzk optimize, X = 07
C - - - - - 0x0268BB 09:A8AB: A2 07     LDX #$07
C - - - - - 0x0268BD 09:A8AD: A9 04     LDA #$04
C - - - - - 0x0268BF 09:A8AF: CD 30 05  CMP ram_0530_obj_state
C - - - - - 0x0268C2 09:A8B2: F0 15     BEQ bra_A8C9_этот_перс_труп
C - - - - - 0x0268C4 09:A8B4: CD 31 05  CMP ram_0530_obj_state + $01
C - - - - - 0x0268C7 09:A8B7: F0 10     BEQ bra_A8C9_этот_перс_труп
; if оба перса живые (бой еще не закончен)
C - - - - - 0x0268C9 09:A8B9: BD 30 05  LDA ram_0530_obj_state,X ; 0537 
C - - - - - 0x0268CC 09:A8BC: 20 32 D0  JSR sub_0x03D042_поинтеры_после_JSR
- D 1 - I - 0x0268CF 09:A8BF: CC A8     .word ofs_050_A8CC_00_проверка_условий_для_запуска_таймера_для_прилета_сплинтера
- D 1 - I - 0x0268D1 09:A8C1: EF A8     .word ofs_050_A8EF_01_отсчет_таймера_до_прилета_сплинтера
- D 1 - I - 0x0268D3 09:A8C3: 1D A9     .word ofs_050_A91D_02_сплинтер_прилетает_сбоку_экрана
- D 1 - I - 0x0268D5 09:A8C5: 45 A9     .word ofs_050_A945_03_сплинтер_летит_вверх_по_центру_и_бросает_мяч
- D 1 - I - 0x0268D7 09:A8C7: 78 A9     .word ofs_050_A978_04_сплинтер_улетает_за_экран
bra_A8C9_этот_перс_труп:
C - - - - - 0x0268D9 09:A8C9: 4C 87 A9  JMP loc_A987



ofs_050_A8CC_00_проверка_условий_для_запуска_таймера_для_прилета_сплинтера:
C - - J - - 0x0268DC 09:A8CC: A9 58     LDA #$58
C - - - - - 0x0268DE 09:A8CE: CD 90 05  CMP ram_plr_hp_lo
C - - - - - 0x0268E1 09:A8D1: B0 11     BCS bra_A8E4
C - - - - - 0x0268E3 09:A8D3: CD 91 05  CMP ram_plr_hp_lo + $01
C - - - - - 0x0268E6 09:A8D6: B0 0C     BCS bra_A8E4
C - - - - - 0x0268E8 09:A8D8: AD 72 06  LDA ram_время_десятки
C - - - - - 0x0268EB 09:A8DB: C9 03     CMP #$03
C - - - - - 0x0268ED 09:A8DD: D0 0F     BNE bra_A8EE_RTS
C - - - - - 0x0268EF 09:A8DF: AD 73 06  LDA ram_время_единицы
C - - - - - 0x0268F2 09:A8E2: D0 0A     BNE bra_A8EE_RTS
bra_A8E4:
C - - - - - 0x0268F4 09:A8E4: AD 36 05  LDA ram_0530_obj_state + $06
C - - - - - 0x0268F7 09:A8E7: C9 06     CMP #$06
C - - - - - 0x0268F9 09:A8E9: D0 03     BNE bra_A8EE_RTS
bra_A8EB:
C - - - - - 0x0268FB 09:A8EB: FE 30 05  INC ram_0530_obj_state,X ; 0537 
bra_A8EE_RTS:
C - - - - - 0x0268FE 09:A8EE: 60        RTS



ofs_050_A8EF_01_отсчет_таймера_до_прилета_сплинтера:
C - - J - - 0x0268FF 09:A8EF: DE 60 05  DEC ram_obj_timer,X ; 0567 
C - - - - - 0x026902 09:A8F2: D0 FA     BNE bra_A8EE_RTS
C - - - - - 0x026904 09:A8F4: A9 13     LDA #$13
C - - - - - 0x026906 09:A8F6: 9D 00 04  STA ram_obj_anim_id,X ; 0407 
C - - - - - 0x026909 09:A8F9: A5 28     LDA ram_random_1
C - - - - - 0x02690B 09:A8FB: 29 01     AND #$01
C - - - - - 0x02690D 09:A8FD: A8        TAY
C - - - - - 0x02690E 09:A8FE: B9 1B A9  LDA tbl_A91B,Y
C - - - - - 0x026911 09:A901: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0447 
C - - - - - 0x026914 09:A904: 20 04 DD  JSR sub_0x03DD14_повернуть_прилетающего_сплинтера_в_нужную_сторону_по_горизонтали
C - - - - - 0x026917 09:A907: A9 C0     LDA #$C0
C - - - - - 0x026919 09:A909: 9D 80 05  STA ram_0580_obj,X ; 0587 
C - - - - - 0x02691C 09:A90C: 20 7D D1  JSR sub_0x03D18D
C - - - - - 0x02691F 09:A90F: A9 20     LDA #con_sfx_прилет_сплинтера
C - - - - - 0x026921 09:A911: 20 90 F6  JSR sub_0x03F6A0_записать_звук_сохранив_X_Y
C - - - - - 0x026924 09:A914: A9 38     LDA #$38
C - - - - - 0x026926 09:A916: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0417 
C - - - - - 0x026929 09:A919: D0 D0     BNE bra_A8EB    ; jmp



tbl_A91B:
- D 1 - - - 0x02692B 09:A91B: 10        .byte $10   ; 00
- D 1 - - - 0x02692C 09:A91C: F0        .byte $F0   ; 01



ofs_050_A91D_02_сплинтер_прилетает_сбоку_экрана:
C - - J - - 0x02692D 09:A91D: AD 36 05  LDA ram_0530_obj_state + $06
C - - - - - 0x026930 09:A920: C9 06     CMP #$06
C - - - - - 0x026932 09:A922: D0 63     BNE bra_A987
C - - - - - 0x026934 09:A924: 20 38 A9  JSR sub_A938
C - - - - - 0x026937 09:A927: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0447 
C - - - - - 0x02693A 09:A92A: 29 FC     AND #$FC
C - - - - - 0x02693C 09:A92C: C9 80     CMP #$80
C - - - - - 0x02693E 09:A92E: D0 5F     BNE bra_A98F_RTS
C - - - - - 0x026940 09:A930: FE 30 05  INC ram_0530_obj_state,X ; 0537 
C - - - - - 0x026943 09:A933: A9 30     LDA #$30
C - - - - - 0x026945 09:A935: 9D 60 05  STA ram_obj_timer,X ; 0567 
sub_A938:
C - - - - - 0x026948 09:A938: 20 65 DB  JSR sub_0x03DB75_добавить_spd_X_к_pos_X
sub_A93B:
C - - - - - 0x02694B 09:A93B: A9 42     LDA #$42    ; pos_Y для сравнения
C - - - - - 0x02694D 09:A93D: A0 04     LDY #$04    ; spd_Z_lo
C - - - - - 0x02694F 09:A93F: 20 0D DF  JSR sub_0x03DF1D
C - - - - - 0x026952 09:A942: 4C 4C DB  JMP loc_0x03DB5C_добавить_spd_Z_к_pos_Y



ofs_050_A945_03_сплинтер_летит_вверх_по_центру_и_бросает_мяч:
C - - J - - 0x026955 09:A945: 20 3B A9  JSR sub_A93B
C - - - - - 0x026958 09:A948: DE 60 05  DEC ram_obj_timer,X ; 0567 
C - - - - - 0x02695B 09:A94B: F0 10     BEQ bra_A95D
C - - - - - 0x02695D 09:A94D: BD 60 05  LDA ram_obj_timer,X ; 0567 
C - - - - - 0x026960 09:A950: C9 18     CMP #$18
C - - - - - 0x026962 09:A952: B0 3B     BCS bra_A98F_RTS
C - - - - - 0x026964 09:A954: 29 06     AND #$06
C - - - - - 0x026966 09:A956: 4A        LSR
C - - - - - 0x026967 09:A957: 09 80     ORA #$80
C - - - - - 0x026969 09:A959: 9D 00 05  STA ram_0500_obj,X ; 0507 
C - - - - - 0x02696C 09:A95C: 60        RTS
bra_A95D:
C - - - - - 0x02696D 09:A95D: A9 60     LDA #$60
C - - - - - 0x02696F 09:A95F: 9D 60 05  STA ram_obj_timer,X ; 0567 
C - - - - - 0x026972 09:A962: FE 30 05  INC ram_0530_obj_state,X ; 0537 
C - - - - - 0x026975 09:A965: A9 00     LDA #$00
C - - - - - 0x026977 09:A967: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x02697A 09:A96A: 8D 36 04  STA ram_obj_pos_X_hi + $06
C - - - - - 0x02697D 09:A96D: 9D 00 05  STA ram_0500_obj,X ; 0507 
C - - - - - 0x026980 09:A970: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0417 
C - - - - - 0x026983 09:A973: 69 20     ADC #$20
C - - - - - 0x026985 09:A975: 8D 16 04  STA ram_obj_pos_Y_lo + $06
ofs_050_A978_04_сплинтер_улетает_за_экран:
C - - - - - 0x026988 09:A978: 20 38 A9  JSR sub_A938
C - - - - - 0x02698B 09:A97B: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0447 
C - - - - - 0x02698E 09:A97E: 10 03     BPL bra_A983
C - - - - - 0x026990 09:A980: 20 FC D1  JSR sub_0x03D20C_EOR
bra_A983:
C - - - - - 0x026993 09:A983: C9 16     CMP #$16
C - - - - - 0x026995 09:A985: B0 08     BCS bra_A98F_RTS
bra_A987:
loc_A987:
C D 1 - - - 0x026997 09:A987: A9 00     LDA #$00
C - - - - - 0x026999 09:A989: 9D 00 04  STA ram_obj_anim_id,X ; 0407 
C - - - - - 0x02699C 09:A98C: 9D 30 05  STA ram_0530_obj_state,X ; 0537 
bra_A98F_RTS:
C - - - - - 0x02699F 09:A98F: 60        RTS



.out .sprintf("Free bytes in bank 16: %d [%Xh]", ($C000 - *), ($C000 - *))
