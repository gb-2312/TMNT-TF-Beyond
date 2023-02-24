; TODO
; найти победные анимации
; добавить комменты
    ; 0x030C12



; ПОДСКАЗКИ (используются как комменты) для удобного поиска
; tip_индекс_буфера_палитры = 0x03D358



; MISC разное
con_bank_id                             = $00 ; использовать только для указания байта в начале банка в 8000
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; 



; CUSTOM для будущего расширения списка персов
con_колво_персов                        = $07 ; для вычислений



; ram_btn_press                         = $008E
; ram_sum_btn_press                     = $0090
; ram_btn_hold                          = $0091
; ram_sum_btn_hold                      = $0093
; добавить комменты 0x02C046 (хотя это мусор)
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30



con_buf_mode_01                         = $01 ; записать список байтов, FF = end token, +01
con_buf_mode_02                         = $02 ; записать список байтов, FF = end token, +32
con_buf_mode_03                         = $03 ; счетчик + запись байта N раз, +01
con_buf_mode_04                         = $04 ; счетчик + запись байта N раз с постоянным его увеличением, +01
con_buf_mode_05                         = $05 ; счетчик + запись байта N раз, +32



; ram_plr_id                            = $00A2
; ram_obj_id                            = $0550
con_fighter_leo                         = $00 ; 00 leo
con_fighter_raph                        = $01 ; 01 raph
con_fighter_mike                        = $02 ; 02 mike
con_fighter_don                         = $03 ; 03 don
con_fighter_casey                       = $04 ; 04 casey
con_fighter_hot                         = $05 ; 05 hot
con_fighter_shred                       = $06 ; 06 shred



; смотреть 0x030C12
con_0x030C10_00                         = $00 ; 
con_0x030C10_01                         = $01 ; 
con_0x030C10_02                         = $02 ; 
con_0x030C10_03                         = $03 ; 
con_0x030C10_04                         = $04 ; 
con_0x030C10_05                         = $05 ; 
con_0x030C10_06                         = $06 ; 
con_0x030C10_07                         = $07 ; 
con_0x030C10_08                         = $08 ; 
con_0x030C10_09                         = $09 ; 
con_0x030C10_0A                         = $0A ; 
con_0x030C10_0B                         = $0B ; 
con_0x030C10_0C                         = $0C ; 
con_0x030C10_0D                         = $0D ; 
con_0x030C10_0E                         = $0E ; ???
con_0x030C10_0F                         = $0F ; ???
; con_0x030C10_10                       = $10 ; 
con_0x030C10_11                         = $11 ; 
con_0x030C10_12                         = $12 ; 
con_0x030C10_13                         = $13 ; 
con_0x030C10_14                         = $14 ; 
con_0x030C10_15                         = $15 ; 
con_0x030C10_16                         = $16 ; 
con_0x030C10_17                         = $17 ; 
con_0x030C10_18                         = $18 ; 
con_0x030C10_19                         = $19 ; 
con_0x030C10_1A                         = $1A ; 
con_0x030C10_1B                         = $1B ; 
con_0x030C10_1C                         = $1C ; 
con_0x030C10_1D                         = $1D ; 
con_0x030C10_1E                         = $1E ; 
con_0x030C10_1F                         = $1F ; 
con_0x030C10_20                         = $20 ; 
con_0x030C10_21                         = $21 ; 
con_0x030C10_22                         = $22 ; 
con_0x030C10_23                         = $23 ; 
con_0x030C10_24                         = $24 ; 
con_0x030C10_25                         = $25 ; 
con_0x030C10_26                         = $26 ; 
con_0x030C10_27                         = $27 ; 
con_0x030C10_28                         = $28 ; 
con_0x030C10_29                         = $29 ; 
con_0x030C10_2A                         = $2A ; 
con_0x030C10_2B                         = $2B ; 
con_0x030C10_2C                         = $2C ; 
con_0x030C10_2D                         = $2D ; 
con_0x030C10_2E                         = $2E ; 
con_0x030C10_2F                         = $2F ; 
con_0x030C10_30                         = $30 ; 
con_0x030C10_31                         = $31 ; 
con_0x030C10_32                         = $32 ; 
con_0x030C10_33                         = $33 ; 
con_0x030C10_34                         = $34 ; 
con_0x030C10_35                         = $35 ; 
con_0x030C10_36                         = $36 ; 
con_0x030C10_37                         = $37 ; 
con_0x030C10_38                         = $38 ; 



; смотреть 0x03F84E и 0x03FCAB
; con_0x03F84C_00                       = $00 ; 
; con_0x03F84C_01                       = $01 ; 
con_0x03F84C_02                         = $02 ; 
; con_0x03F84C_03                       = $03 ; 
; con_0x03F84C_04                       = $04 ; 
con_0x03F84C_05                         = $05 ; 
con_0x03F84C_06                         = $06 ; 
con_0x03F84C_07                         = $07 ; 
con_0x03F84C_08                         = $08 ; 
con_0x03F84C_09                         = $09 ; 
con_0x03F84C_0A                         = $0A ; 
con_0x03F84C_0B                         = $0B ; 
con_0x03F84C_0C                         = $0C ; 
con_0x03F84C_0D                         = $0D ; 
con_0x03F84C_0E                         = $0E ; 
con_0x03F84C_0F                         = $0F ; 
con_0x03F84C_10                         = $10 ; 



; смотреть 0x03DC3B
; con_0x03DC39_00                       = $00 ; 
con_0x03DC39_02                         = $02 ; 
con_0x03DC39_04                         = $04 ; 
con_0x03DC39_06                         = $06 ; 
con_0x03DC39_08                         = $08 ; 
con_0x03DC39_0A                         = $0A ; 
con_0x03DC39_0C                         = $0C ; 
con_0x03DC39_0E                         = $0E ; 
; con_0x03DC39_10                       = $10 ; 
con_0x03DC39_12                         = $12 ; 
con_0x03DC39_14                         = $14 ; 
con_0x03DC39_16                         = $16 ; 
con_0x03DC39_18                         = $18 ; 
con_0x03DC39_1A                         = $1A ; 
con_0x03DC39_1C                         = $1C ; 
con_0x03DC39_1E                         = $1E ; 
con_0x03DC39_20                         = $20 ; 



; 0x03F6AC
; 01-2D 0x020EB0 музыка
con_0x03F6AD_01                         = $01 ; 
con_0x03F6AD_02                         = $02 ; 
con_0x03F6AD_03                         = $03 ; 
con_0x03F6AD_04                         = $04 ; 
con_0x03F6AD_05                         = $05 ; 
con_0x03F6AD_06                         = $06 ; 
con_0x03F6AD_07                         = $07 ; 
con_0x03F6AD_08                         = $08 ; 
con_0x03F6AD_09                         = $09 ; 
con_0x03F6AD_0A                         = $0A ; 
con_0x03F6AD_0B                         = $0B ; 
con_0x03F6AD_0C                         = $0C ; 
con_0x03F6AD_0D                         = $0D ; 
con_0x03F6AD_0E                         = $0E ; 
con_0x03F6AD_0F                         = $0F ; 
con_0x03F6AD_10                         = $10 ; 
con_0x03F6AD_11                         = $11 ; 
con_0x03F6AD_12                         = $12 ; 
con_0x03F6AD_13                         = $13 ; 
con_0x03F6AD_14                         = $14 ; 
con_0x03F6AD_15                         = $15 ; 
con_0x03F6AD_16                         = $16 ; 
con_0x03F6AD_17                         = $17 ; 
con_0x03F6AD_18                         = $18 ; 
con_0x03F6AD_19                         = $19 ; 
con_0x03F6AD_1A                         = $1A ; 
con_0x03F6AD_1B                         = $1B ; 
con_0x03F6AD_1C                         = $1C ; 
con_0x03F6AD_1D                         = $1D ; 
con_0x03F6AD_1E                         = $1E ; 
con_0x03F6AD_1F                         = $1F ; 
con_0x03F6AD_20                         = $20 ; 
con_0x03F6AD_21                         = $21 ; 
con_0x03F6AD_22                         = $22 ; 
con_0x03F6AD_23                         = $23 ; 
con_0x03F6AD_24                         = $24 ; 
con_0x03F6AD_25                         = $25 ; 
con_0x03F6AD_26                         = $26 ; 
con_0x03F6AD_27                         = $27 ; 
con_0x03F6AD_28                         = $28 ; 
con_0x03F6AD_29                         = $29 ; 
con_0x03F6AD_2A                         = $2A ; 
con_0x03F6AD_2B                         = $2B ; 
con_0x03F6AD_2C                         = $2C ; 
con_0x03F6AD_2D                         = $2D ; 

; 2E-46 0x021026 ???
; предположительно музыка/звуки с высоким приоритетом,
; при воспроизведении которых предварительно выключаются
; остальные звуки и музыка, типа финального смертельного удара
con_0x03F6AD_2E                         = $2E ; 
con_0x03F6AD_2F                         = $2F ; 
con_0x03F6AD_30                         = $30 ; 
con_0x03F6AD_31                         = $31 ; 
con_0x03F6AD_32                         = $32 ; 
con_0x03F6AD_33                         = $33 ; 
con_0x03F6AD_34                         = $34 ; 
con_0x03F6AD_35                         = $35 ; 
con_0x03F6AD_36                         = $36 ; 
con_0x03F6AD_37                         = $37 ; 
con_0x03F6AD_38                         = $38 ; 
con_0x03F6AD_39                         = $39 ; 
con_0x03F6AD_3A                         = $3A ; 
con_0x03F6AD_3B                         = $3B ; 
con_0x03F6AD_3C                         = $3C ; 
con_0x03F6AD_3D                         = $3D ; 
con_0x03F6AD_3E                         = $3E ; 
con_0x03F6AD_3F                         = $3F ; 
con_0x03F6AD_40                         = $40 ; 
con_0x03F6AD_41                         = $41 ; 
con_0x03F6AD_42                         = $42 ; 
con_0x03F6AD_43                         = $43 ; 
con_0x03F6AD_44                         = $44 ; 
con_0x03F6AD_45                         = $45 ; 
con_0x03F6AD_46                         = $46 ; 

; 47-5A 0x02100E обычные звуки?
con_0x03F6AD_47                         = $47 ; 
con_0x03F6AD_48                         = $48 ; 
con_0x03F6AD_49                         = $49 ; 
con_0x03F6AD_4A                         = $4A ; 
con_0x03F6AD_4B                         = $4B ; 
con_0x03F6AD_4C                         = $4C ; 
con_0x03F6AD_4D                         = $4D ; 
con_0x03F6AD_4E                         = $4E ; 
con_0x03F6AD_4F                         = $4F ; 
con_0x03F6AD_50                         = $50 ; 
con_0x03F6AD_51                         = $51 ; 
con_0x03F6AD_52                         = $52 ; 
con_0x03F6AD_53                         = $53 ; 
con_0x03F6AD_54                         = $54 ; 
con_0x03F6AD_55                         = $55 ; 
con_0x03F6AD_56                         = $56 ; 
con_0x03F6AD_57                         = $57 ; звук броска шреда
con_0x03F6AD_58                         = $58 ; 
con_0x03F6AD_59                         = $59 ; 
con_0x03F6AD_5A                         = $5A ; 

; 5B 0x021008 ???
con_0x03F6AD_5B                         = $5B ; 











; взято из из прошлого исходника
; ram_id_blow                           = $0552 обычные удары
; черепахи
    ; рука издалека                         = $01
    ; нога вблизи                           = $02
    ; рука в воздухе                        = $03
    ; нога в воздухе                        = $04
    ; рука сидя                             = $05
    ; нога сидя обычная                     = $06
    ; рука вблизи                           = $07
    ; нога издалека обычная                 = $08
    ; нога издалека raph/don                = $09
    ; нога сидя leo (подкат)                = $0A
    ; локоть с разбега                      = $0B
    ; нога антиэйр                          = $0C
    ; рука антиэйр                          = $0D
    ; пятка с разбега                       = $0E
; casey
    ; рука издалека                         = $0F
    ; нога вблизи                           = $10
    ; рука сидя                             = $11
    ; нога сидя                             = $12
    ; рука вблизи                           = $13
    ; нога издалека                         = $14
    ; рука антиэйр                          = $15
    ; рука в воздухе                        = $16
    ; нога в воздухе                        = $17
    ; нога антиэйр                          = $18
; hot
    ; рука вблизи                           = $19
    ; рука издалека                         = $1A
    ; рука в воздухе                        = $1B
    ; рука сидя                             = $1C
    ; нога вблизи                           = $1D
    ; нога издалека                         = $1E
    ; нога в воздухе                        = $1F
    ; нога сидя                             = $20
    ; рука антиэйр                          = $22
    ; нога антиэйр                          = $23
; shred
    ; рука вблизи                           = $24
    ; рука издалека                         = $26
    ; рука антиэйр                          = $27
    ; рука в воздухе                        = $28
    ; рука сидя                             = $29
    ; нога вблизи                           = $2A
    ; нога издалека                         = $2B
    ; нога в воздухе                        = $2C
    ; нога сидя                             = $2D
    ; нога антиэйр                          = $2E




; ram_id_special                        = $0554 спешалы
    ; hot бабочка                           = $21
    ; hot огонь                             = $2F
    ; shred волна                           = $30
    ; leo крутилка                          = $31
    ; raph сверло                           = $32
    ; mike ракеты понизу                    = $33
    ; mike ракеты поверху                   = $34
    ; don пила вращение                     = $35
    ; shred мясо                            = $36
    ; casey клюшка                          = $37
    ; don пила подкат                       = $38
    ; casey вихрь                           = $39